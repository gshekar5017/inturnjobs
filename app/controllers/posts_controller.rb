class PostsController < ApplicationController
before_action :authenticate_employer!
  def new
    @post= Post.new
  end
  def create
    @post=Post.new(post_params)
    if @post.save
     flash[:success] = "Your Profile is created successfully!"
      redirect_to @post
     else
      render 'new'
    end
  end
  def show
    @post = Post.find(params[:id])
  end
  private
   def post_params
     params.require(:post).permit(:profilename, :designation, :department, :university)
   end
end
