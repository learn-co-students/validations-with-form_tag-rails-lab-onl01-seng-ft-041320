class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end
  

  def update
    @post = Post.find(params[:id])
      if @post.update_attributes(post_params)
        flash[:success] = "Post was successfully updated"
        redirect_to @post
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end

  def create
    @post = Posts.new(post_params)
    if @post.save
      flash[:success] = "Posts successfully created"
      redirect_to @post
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
  def new
    @post = Post.new
  end
  

  private
  
  def post_params
    params.permit(:title, :category, :content)
  end
end
