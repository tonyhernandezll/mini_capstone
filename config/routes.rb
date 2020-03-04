Rails.application.routes.draw do
  namespace :api do
    get "/sale_anything_url" => "products#product_method"
  end
end
