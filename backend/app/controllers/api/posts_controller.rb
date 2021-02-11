class Api::PostsController < ApplicationController
  before_action :authenticate_api_user!, only: %i[show]

  def index
    posts = Post.all
    render json: posts, status: :ok
  end

  def create
    post = Post.new(post_params)
    if post.save
      render json: post, status: :created
    else
      render json: post.errors, status: :unprocessable_entity
    end
  end

  def show
    # binding.pry
    post = Post.find(params[:id])
    render json: post, status: :ok
  end

  def update
    post = Post.find(params[:id])
    # binding.pry
    post.update(post_params)
    render json: post, status: :ok
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    render json: post, status: :ok
  end


  private
    def post_params
      # params.require(:post).permit(:name)
      # params.permit(:name, :id)
      # params.require(:post).permit(:name, :id)
      params.permit(:name, :id, :video)
    end

end
