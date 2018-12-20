class PagesController < ApplicationController
<<<<<<< HEAD
	before_action :authenticate_user!
	before_action :set_search


   
  def ingex
  	@posts = Post.all
   end
   def set_search
	@q = Post.search(params[:q])
	end
=======
  def ingex
  	@posts = Post.all
  end
>>>>>>> 633099324a3f4377ee6202bfd6a61570ad6f8560

  def about
  end
  def contact_us
  end
end
