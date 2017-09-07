class ProductsController < ApplicationController
  def index
    # test fails without instance variable being passed to view
    @cart = cart
  end

  def add
    @item = params[:product]
    cart << @item
    redirect_to products_index_path
  end
end
