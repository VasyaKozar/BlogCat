class PostsController < ApplicationController
  before_action :authenticate_user!
  
  def new
  	@post = Post.new
  end

  def create
  	@post = current_user.posts.build(post_params)
  	if(@post.save)
  		redirect_to @post
    else
    render 'new' 
    end
  end

  def show
  	@post = Post.find_by(id: params[:id])
  end

  def edit
  	@post = Post.find_by(id: params[:id])
  end

  def update
  	@post = Post.find_by(id: params[:id])
  	if @post.update(post_params)
  		redirect_to @post
  	end
  end

  def destroy
  	@post = Post.find_by(id: params[:id])
  	@post.destroy
  	redirect_to root_path
  end

  private
  def post_params
  	params.require(:post).permit(:user_id, :title, :body)
  end

end
