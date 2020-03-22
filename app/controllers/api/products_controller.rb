class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    if current_user
      @products = Product.all
      render "index.json.jb"
    else
      render json: []
    end
  end

  def create
    @product = Product.new(
      name: params["name"],
      price: params["price"],
      description: params["description"],
      supplier_id: params["supplier_id"],
      user_id: current_user.id,
    )
    if @product.save
      Image.create(url: params[:image_url], product_id: @product.id)
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }
    end
  end

  def show
    @product = current_user.products.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(id: params["id"])

    @product.id = params["id"] || @product.id
    @product.name = params["name"] || @product.name
    @product.price = params["price"] || @product.price
    @product.description = params["description"] || @product.description
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }
    end
  end

  def destroy
    @product = Product.find_by(id: params["id"])
    @product.destroy
    render json: { message: "Product successfully destroyed!" }
  end
end
