class ApplicationController < ActionController::Base
		after_action :store_location
		respond_to :text, :html
		before_action :set_search

	

  after_action :store_location


def store_location
  # store last url as long as it isn't a /users path
  session[:previous_url] = request.fullpath unless request.fullpath =~ /\/users/
end

def after_sign_in_path_for(resource)
  session[:previous_url] || root_path
end



def set_search
@q = Post.search(params[:q])
end

end
