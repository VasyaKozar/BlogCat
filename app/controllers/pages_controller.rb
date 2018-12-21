class PagesController < ApplicationController

	before_action :authenticate_user!


   
  def ingex
  	@posts = Post.all
  	@q = Post.search(params[:q])
      @post = @q.result(distinct: true)
      
   end
  

  def about
  end
  def contact_us
  end
end
