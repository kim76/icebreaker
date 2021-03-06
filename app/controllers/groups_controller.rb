class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end


  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)

    if @group.save
      redirect_to @group
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def group_params
      params.require(:group).permit(:group_code)
    end
end
