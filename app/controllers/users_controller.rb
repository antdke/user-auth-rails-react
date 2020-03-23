class UsersController < ApplicationController
  # we're using JSON object because we aren't using Rails views
  # we're treating our server as an API only app for the React client to handle
  # errors are being handled in a very basic and semantic way here
  
  # lists all existing users
  def index
    @users = User.all
    if @users
      render json: { 
        users: @users 
      }
    else
      render json: { 
        status: 500, 
        errors: ['No users found']
      }
    end
  end

  # displays a specific user
  def show
    @user = User.find(params[:id])
    if @user
      render json: {
        user: @user
      }
    else
      render json: { 
        status: 500, 
        errors: ['User not found']
      } 
    end
  end

  # create a new user
  def create
    @user = User.new(user_params)
    if @user.save
      login!
      render json: {
        status: :created,
        user: @user
      }
    else
      render json: {
        status: 500,
        errors: @user.errors.full_messages
      }
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end