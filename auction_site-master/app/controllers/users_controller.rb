class UsersController < ApplicationController
  before_action :authenticate_user!, only: :show

  def index
    @users_array = User.all
    render :index
  end

  def new
    @the_user = User.new
    render :new
  end

  def create
    @the_user = User.new(user_params)

    if @the_user.save
      flash[:notice] = "User #{@the_user.email} created"
      redirect_to "/users"
    else
      flash.now[:alert] = "User couldn't be created"
      render :new
    end
  end

  def show
    @the_user = User.find(params[:id])
    render 'users/show'
  end

  def destroy
    the_user = User.find(params[:id])
    the_user.destroy

    redirect_to "/users"
  end



  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
