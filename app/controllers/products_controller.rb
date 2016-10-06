class ProductsController < ApplicationController

  def index
    @cart = self.cart
  end

  def add
    # binding.pry
    self.cart << params[:product]
    redirect_to products_path
  end

end
