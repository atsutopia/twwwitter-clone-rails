class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_param)
    if @user.save
      redirect_to timeline_index_path
    else
      render :new
    end
  end

  private
  def user_param
    params.require(:user).permit(:account, :username, :introduction, :icon_url, :cover_url)
  end
end
