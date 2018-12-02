class PagesController < ApplicationController
  def ingex
  	@posts = Post.all
  end

  def about
  end
  def contact_us
  end
end
