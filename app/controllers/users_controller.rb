class UsersController < ApplicationController

  def create
    debugger
    @user = User.create(user_params)
    debugger

    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :location)
  end

end
