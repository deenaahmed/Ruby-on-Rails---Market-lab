class CategoriesController < InheritedResources::Base
 # before_action :authenticate_user!

  private

    def category_params
      params.require(:category).permit(:name)
    end
end

