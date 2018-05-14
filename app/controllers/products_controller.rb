class ProductsController < InheritedResources::Base
  before_action :authenticate_user!
  before_action :set_product, :set_user , only: [:addtofavorite, :addedtofavorite]

  def addtofavorite
    @user.products << @product
    @user.save
    respond_to do |format|
      format.html { redirect_to '/products', notice: 'Product was successfully added to the favorite' }
    end
  end
  def addedtofavorite
    @user.products.delete(Product.find(@product.id))
    respond_to do |format|
      format.html { redirect_to '/products', notice: 'Product was successfully removed  from the favorite' }
    end
  end

  private

    def product_params
      params.require(:product).permit(:name, :price, :category_id)
    end
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = current_user
    end
    def set_product
      @product = Product.find(params[:id])
    end

end

