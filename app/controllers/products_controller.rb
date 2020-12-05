class ProductsController < ApplicationController
  before_action :current_user

  def index
    @products = Product.all
  end

  def new; end

  def show
    @product = Product.find(params[:id])
  end

  def create; end

  def destroy; end
end
