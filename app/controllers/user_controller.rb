class UserController < ApplicationController
  decorates_assigned :user

  def show
    @user = User.find(params[:id])
  end
end
