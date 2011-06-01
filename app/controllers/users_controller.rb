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
    if @user.save
      # handle successful save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end

end
