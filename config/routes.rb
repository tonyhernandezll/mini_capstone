Rails.application.routes.draw do
  namespace :api do
    get "/all_products_url" => "products#all_products"
    get "first_product_url" => "products#first_product_method"
  end
end
