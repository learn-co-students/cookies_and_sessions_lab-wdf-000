class ProductController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  def index
    @cart = session[:cart]
  end

  def add
    session[:cart] = params[:product]
      redirect_to '/'
  end

end
