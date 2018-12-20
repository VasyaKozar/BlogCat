class PostsController < ApplicationController
  before_action :authenticate_user!
<<<<<<< HEAD
  before_action :set_search
  before_action :find_post, only: [:show, :edit, :update, :destroy]

    def index
      @q = Post.search(params[:q])
      @post = @q.result(distinct: true)
    end
    def set_search
  @q = Post.search(params[:q])
  end
   
=======
  
>>>>>>> 633099324a3f4377ee6202bfd6a61570ad6f8560
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
<<<<<<< HEAD
  
=======
>>>>>>> 633099324a3f4377ee6202bfd6a61570ad6f8560
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
<<<<<<< HEAD
   def find_post
    @post = Post.find_by(id: params[:id])
end
=======
>>>>>>> 633099324a3f4377ee6202bfd6a61570ad6f8560

end
