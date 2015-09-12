class Api::V1::UsersController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    if params[:id].present?
      user = User.find_by_id(params[:id])
        if user
          @user_contacts = user.contacts
          render json: @user_contacts
        else
          render json: {error: "Sorry, couldnt find User with that ID"}
        end
    else
      users = User.all
      render json: users.to_json
    end
  end

  def create
    @user=User.new(user_params)
    if @user.save
      render json: {note:"User Created!"}, status: 200
    else
      render json: {error: "Sorry, user could not be created, #{@user.errors.full_messages}"}
    end
  end

  def show
    @user = User.find_by_id(params[:id])
    if @user
      render json: @user.to_json
    else
      render json: {error: "Sorry, a user with that id dosnt exist"}
    end
  end

  def update
    @user = User.find_by_id(params[:id])
    if @user
      if @user.update(user_params)
        render json: {note: "User Updated"}, status:200
      else
        render json: {error: "User Update, #{@user.errors.full_messages}"}, status: 422
      end
    else
      render json: {error: "Contact with that id dosnt exist"}
    end
  end

  def destroy
    @user=User.find_by_id(params[:id])
    if @user 
        if @user.destroy
          render json: {note: "Contact Deleted"}, status:200
        else
          render json: {error: "Contact Delete #{@contact.errors.full_messages}"}, status: 422
        end
    else
      render json: {error: "Contact with that id dosnt exist"}
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
