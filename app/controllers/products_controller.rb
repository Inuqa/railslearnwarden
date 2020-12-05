class ProductsController < ApplicationController
  before_action :current_user

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    redirect_to @product, notice: 'Product create successfully' if @product.save
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_url, notice: 'Product was successfully deleted'
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :stock, :image, :description, :category_id)
  end
end
