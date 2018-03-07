class WelcomeController < ApplicationController
  def index
    @product = Product.new
  end

  def users
    if params[:name] != nil && params[:age].present?
      user = User.create(name: params[:name], age: params[:age])
    end
    @users = User.all
  end

  def create_products
    product = Product.create(product_params)
    redirect_to products_path
  end

  def products
    @products = Product.all
  end

  # Don't need this anymore because our routes skip over this method
  # to use the if statement in the def users
  def create_users
    user = User.create(name: params[:name], age: params[:age])
    redirect_to users_path
  end

  private

    def product_params
      params.require(:product).permit(:name, :price, :quantity)
    end

end
