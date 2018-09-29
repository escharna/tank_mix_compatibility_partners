class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :get_user, only: [:edit, :update]

  def index
    @users = User.all
  end

  def edit
  end

  def update
    if @user.update_attributes(user_attributes)
      redirect_to users_path
    else
      raise 'check'
    end
  end

  private

  def user_attributes
    params.require(:user).permit(:id, :first_name, :last_name, :job_title)
  end

  def get_user
    @user = User.find(params[:id])
  end
end
