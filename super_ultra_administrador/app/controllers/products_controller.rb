class ProductsController < InheritedResources::Base

  private

    def product_params
      params.require(:product).permit(:name, :price, :description, :category_id, :code, :stock, :branch_id)
    end
end

