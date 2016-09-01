class ProductsController < ApplicationController 
  def index
    cart
  end
  
  def add_item
    cart << params[:product]
    render :index
  end
end
