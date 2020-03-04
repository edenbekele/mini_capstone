class Api::ProductsController < ApplicationController
  def juice_method
    render "juice.json.jb"
  end
end
