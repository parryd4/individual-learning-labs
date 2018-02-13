class UsersController < ApplicationController

  def index
    @users = Users.all
  end

  def show
    @user = User.find(params[:id])

    # Even own user could not see their Private labs
    # if session[:user_id] == params[:id]
      @labs = @user.labs
    # else
    #   @labs = @user.labs.where(public: true)
    # end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :first_name, :last_name)
  end

end
