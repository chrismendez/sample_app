class UsersController < ApplicationController
  
  # the "show" action is implicit in a GET request of /users/1
  def show
    @user = User.find(params[:id])
	 @title = @user.name
  end

  def new
    @title = "Sign up"
  end

end
