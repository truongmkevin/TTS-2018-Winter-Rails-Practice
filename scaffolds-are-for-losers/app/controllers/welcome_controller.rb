class WelcomeController < ApplicationController
  def index
  end

  def users
    if params[:name] != nil && params[:age].present?
      user = User.create(name: params[:name], age: params[:age])
    end
    @users = User.all
  end

  def products
  end

  # Don't need this anymore because our routes skip over this method
  # to use the if statement in the def users
  def create_users
    user = User.create(name: params[:name], age: params[:age])
    redirect_to users_path
  end
end
