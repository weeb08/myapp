class PagesController < ApplicationController
	def home
	@stories=Story.all
	end

  	def link_to_image(image_path, target_link)
	link_to(image_tag(image_path, :border => "0"), target_link)
	end
end
