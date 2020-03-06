class Api::ProductsController < ApplicationController
  def index
    @product = Product.all
    render "index.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:title],
      price: params[:price],
      image_url: params[:img],
      description: params[:description],
    )
    @product.save
    render "show.json.jb"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(:id params[:id])
    @product.name = params[:input_name] || @product.name
    @product.price = params[:input_price] || @product.price
    @product.image = params[input_img] || @product.image_url
    @product.description = params[input_description] || @product.description
    render "show.json.jb"
  end  

end
