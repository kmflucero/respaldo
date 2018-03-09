class BranchesController < InheritedResources::Base

  private

    def branch_params
      params.require(:branch).permit(:name, :address, :city, :type)
    end
end

