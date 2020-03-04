class Api::ProductsController < ApplicationController
  def juice1_method
    @product = Product.first
    render "juice.json.jb"
  end

  def all_juices_action
    @products = Product.all
    render "all_juices.json.jb"
  end
end
