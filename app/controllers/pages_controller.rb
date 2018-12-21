class PagesController < ApplicationController

	before_action :authenticate_user!


   
  def ingex
  	@posts = Post.all
   end
  

  def about
  end
  def contact_us
  end
end
