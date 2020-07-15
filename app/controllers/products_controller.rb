class ProductsController < ApplicationController
  def new
  end

  def add
    cart << params[:product] #if !params[:product].empty?
    render 'index'
  end

  def index
    cart
  end
end