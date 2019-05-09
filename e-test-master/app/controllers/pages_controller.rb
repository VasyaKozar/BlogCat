class PagesController < ApplicationController
  def index
  	if user_signed_in? and current_user.profile.nil?
  		redirect_to new_profile_path
  	end

  	@categories = Categorie.all
    @product = Product.find_by(id: params[:id])
    @product = Product.all
  	if user_signed_in?
  		@orders
    end
  end

  def showpage
    @categories = Categorie.all
  end
  def _allcategories
    @categories = Categorie.all
  end
end
