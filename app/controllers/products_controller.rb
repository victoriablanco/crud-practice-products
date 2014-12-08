class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def index
    @products = Product.all
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product was created successfully"
      redirect_to products_path
    else
      render :new
    end
  end

def edit
  @products = Product.find(params[:id])
end

def update
  @product = Product.find(params[:id])
  @product.update(product_params)
  if @product.save
    flash[:notice] = "Product was updated successfully"
    redirect_to products_path
  else
    render :edit
  end
end

def destroy
  @product = Product.find(params[:id])
  @product.destroy
  flash[:notice] = "Product was deleted"
  redirect_to products_path
end

def show
  @product = Product.find(params[:id])
end

  private
  def product_params
    params.require(:product).permit(
    :name,
    :description,
    :price,
    )
  end
end
