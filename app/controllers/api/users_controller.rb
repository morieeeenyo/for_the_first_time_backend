class Api::UsersController < ApplicationController

  def create
    raise ArgumentError, 'BadRequest Parameter' if payload.blank?
    user = User.create!(sign_up_params.merge(uid: payload['sub']))
    render json: user, serializer: V1::AuthSerializer, status: :ok
  end

  private

  def sign_up_params
    params.require(:registration).permit(:user_name, :display_name)
  end

  def token_from_request_headers
    request.headers['Authorization']&.split&.last
  end

  def token
    params[:token] || token_from_request_headers
  end

  def payload
    @payload ||= FirebaseIdToken::Signature.verify token
  end

end
