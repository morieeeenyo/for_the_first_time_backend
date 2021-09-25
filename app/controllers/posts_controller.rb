class PostsController < ApplicationController
  def index
    render json: { data: Post.all }
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

end
