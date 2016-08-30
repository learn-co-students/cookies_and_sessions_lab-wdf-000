Rails.application.routes.draw do
  get '/', to: 'products#new'
  post '/cart', to: 'products#add'
  get '/products', to: 'products#index'#, as: 'cart'
end
