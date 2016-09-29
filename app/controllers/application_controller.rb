class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @cart = self.cart
    render '/products/index'
  end

  def new
    self.cart << params[:product]
    @cart = self.cart
    render '/products/index'
  end

  def cart
    session[:cart] = session[:cart] || []
    cart = session[:cart]
  end
end
