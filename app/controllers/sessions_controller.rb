class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(name: params[:name])
    if @user
      session[:user_id] = @user.id
      redirect_to root_path
    end
  end

  def destroy

  end
end
