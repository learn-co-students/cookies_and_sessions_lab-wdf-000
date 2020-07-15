class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # after_action :set_cart, only: [:index, :new]

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
    session[:cart] ||= []
    cart = session[:cart]
  end

  private
  def set_cart
    @cart = self.cart
    render '/products/index'
  end
end
