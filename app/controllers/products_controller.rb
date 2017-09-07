class ProductsController < ApplicationController
  def index
  end

  def add
 cart << params[:product] 
 session[:cart] = cart.compact
 # render 'index'
  end
end
