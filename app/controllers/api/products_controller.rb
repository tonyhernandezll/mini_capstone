class Api::ProductsController < ApplicationController
  def product_method
    @products = Product.first
    render "my_product.json.jb"
  end
end
