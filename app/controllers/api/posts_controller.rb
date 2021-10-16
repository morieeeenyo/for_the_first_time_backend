class Api::PostsController < ApplicationController
  before_action :authenticate_user

  def index
    render json: { data: current_user.posts.order(id: :desc) }
  end

  def create
    post = current_user.posts.new(post_params)

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
