class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
    if @product.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
      if @product.update(product_params)
        flash[:notice] = "You have successfully updated your product."
        redirect_to root_path
      else
        render :edit
      end
  end

  private
  def product_params
  params.require(:product).permit(:title, :description, :price, :image)
  end
end
