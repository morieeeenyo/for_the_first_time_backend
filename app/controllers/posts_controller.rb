class PostsController < ApplicationController
  def index
    render json: { data: my_posts }
  end

  def create
    post = Post.new(post_params)

    if post.save
      render json: { data: post }
    else
      render status: 422, json: { errors: post.errors.full_messages }
    end
  end

  private

  def post_params
    params.permit(:content, :genre_id, :user_token)
  end

  def my_posts
    Post.where(user_token: params[:user_token])
  end

end
