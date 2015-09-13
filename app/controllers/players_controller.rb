class PlayersController < ApplicationController
	helper_method :sort_column, :sort_direction  


def index
 @players = Player.all
end

def stats
 @players = Player.order(sort_column + " " + sort_direction)
end

def show
 @player = Player.find(params[:id])
 @team = @player.team
end

def new
  @player = Player.new 
end

def create
  @player = Player.new(player_params)
  if @player.save
    redirect_to(:action => 'index')
  else
   render('new')
  end
end

def edit
   @player = Player.find(params[:id])
end

def update
 @player = Player.find(params[:id])
  if @player.update_attributes(player_params)
     redirect_to(:action => 'show', :id => @player.id)
  else
     render('index')
  end
end

def delete
 @player = Player.find(params[:id])
end

def destroy
end

private

def player_params
 params.require(:player).permit(:name, :age, :gp, :min, :fgm, :fga, :fg_percent, :three_pm, :three_pa, :three_p_percent, :ftm, :fta, :ft_percent,
 :reb, :ast, :stl, :blk, :pts, :pts_thirty_six, :reb_thirty_six, :pps, :plus_minus, :sal_2015, :sal_2016, :sal_2017,
 :ts_percent, :ast_ratio, :to_ratio, :usg, :reb_rate, :per, :va, :ewa, :team_id )
end

def sort_column
 Player.column_names.include?(params[:sort]) ? params[:sort] : "name"
end

def sort_direction
 %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
end

end
