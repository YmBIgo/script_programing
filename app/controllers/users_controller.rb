class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :full_profile_check,  only: [:index, :show]

  def index
  end

  def show
    @user = User.find(params[:id])
    @messages = @user.messages
    @message = Message.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(update_params)
  end

  private

  def full_profile_check
    if current_user.present?
      redirect_to(edit_user_path(current_user.id)) unless current_user.full_profile?
    else
      redirect_to root_path
    end
  end

  def update_params
    params.require(:user).permit(:family_name, :first_name, :age, :grade, :has_gone_with, :introduce_text)
  end

end
