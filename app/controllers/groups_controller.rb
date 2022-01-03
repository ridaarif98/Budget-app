class GroupsController < ApplicationController
    def new
        @group = Group.new
    end

    def create
        @group = current_user.groups.create(group_params)
        if @group.save
            flash[:notice] = 'Category created successfully.'
            redirect_to root_path
        else
          render :new
        end
    end

    private 

    def group_params
        params.require(:group).permit(:name, :icon)
    end
end
