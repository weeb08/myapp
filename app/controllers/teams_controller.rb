class TeamsController < ApplicationController
	helper_method :sort_column, :sort_direction  

def index
 require 'enumerator'
 @teams = Team.all
end

def stats
 @teams = Team.order(sort_column + " " + sort_direction)
end

def show
 @team = Team.find(params[:id])
 @players = @team.players
end

def new
@team = Team.new
end

def create
end

def edit
 @team = Team.find(params[:id])
end

def update
 @team = Team.find(params[:id])
  if @team.update_attributes(team_params)
   redirect_to(:action => 'show', :id => @team.id)
  else
   render('index')
  end
end

def delete
 @team = Team.find(params[:id])
end

def destroy
end

def link_to_image(image_path, target_link)
 link_to(image_tag(image_path, :border => "0"), target_link)
end


private

def team_params
 params.require(:team).permit(:name, :thumburl, :win_loss, :fg_percent, :fg_percent_rank, :three_pa_rank, :three_pfg_percent, 
 :three_pfg_percent_rank, :fta_rank, :ft_percent, :ft_percent_rank, :reb, :reb_rank, :ast, :ast_rank, :tov, :tov_rank, 
 :stlblk_rank, :ppg, :ppg_rank, :ppga, :ppga_rank, :plus_minus, :plus_minus_rank, :pps, :pps_rank, :ts_percent, 
 :ts_percent_rank )
end

def sort_column
 Team.column_names.include?(params[:sort]) ? params[:sort] : "name"
end

def sort_direction
 %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
end

end
