class ApplicationController < ActionController::API
  before_action :authorized?

  MY_TOKEN = 'aQl7kmtNN_'

  def encode_token(payload)
    JWT.encode(payload, MY_TOKEN)
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]

      begin
        JWT.decode(token, MY_TOKEN, true, algorithm: 'HS256')
      rescue
        JWT::DecodeError
        nil
      end
    end
  end

  def current_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find(user_id)
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized?
    render json: { message: 'Please login' }, status: :unauthorized unless logged_in?
  end
end
