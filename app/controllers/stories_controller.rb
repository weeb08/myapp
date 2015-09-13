class StoriesController < ApplicationController
  def index
	@stories=Story.all
  end

  def show
	@story= Story.find(params[:id])
  end

  def link_to_image(image_path, target_link)
	link_to(image_tag(image_path, :border => "0"), target_link)
  end

  def new
	@story=Story.new
  end

  def create
	@story = Story.new(player_params)
	  if @story.save
	    redirect_to(:action => 'index')
	  else
	    render('new')
 	  end
  end

  def edit
	@story= Story.find(params[:id])
  end

  def update
	 @story = Story.find(params[:id])
  if @story.update_attributes(story_params)
     redirect_to(:action => 'show', :id => @story.id)
  else
     render('index')	
  end
  end

  def delete
  end

  private

  def story_params
	params.require(:story).permit(:name, :thumburl, :summary)
  end

end
