class UsersController < ApplicationController
  
  # the "show" action is implicit in a GET request of /users/1
  def show
    @user = User.find(params[:id])
    @title = @user.name # comes after the find()
  end

  def new
    @user = User.new
    @title = "Sign up"
  end
  
  def create
    @user = User.new(params[:user]) # create a user with the parameters
    # successful save
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    # failed save
    else
      @title = "Sign up"
      @user.password = ""
      @user.password_confirmation = ""
      render 'new'
    end
  end

end
