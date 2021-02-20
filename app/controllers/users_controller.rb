class UsersController < ApplicationController
  def create
    # create post for a user
    @user = User.new(user: params.permit(:username, :email, :first_name, :last_name))

    if @user.save
      render 'users/show.jbuilder'
    else
      render 'users/error.jbuilder'
    end
  end
end