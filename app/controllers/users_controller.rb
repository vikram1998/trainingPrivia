class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to("/users")
    end
  end

  private
    def user_params
      params[:age].to_i
      params.require(:user).permit(:first_name, :last_name, :age, :email_id)
    end

end
