class PagesController < ApplicationController

	before_action :authenticate_user!
	before_action :set_search


   
  def ingex
  	@posts = Post.all
   end
   def set_search
	@q = Post.search(params[:q])
	end

  def ingex
  	@posts = Post.all
  end


  def about
  end
  def contact_us
  end
end
