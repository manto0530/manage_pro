class MembersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project

  def index
    @members = @project.users
  end

  def new
    @project_user_relationship = ProjectUserRelationship.new
  end

  def create
    @project_user_relationship = @project.project_user_relationships.new(relationship_params)
    if @project_user_relationship.save
      redirect_to project_path(@project)
    end
  end

  private
    def set_project
      @project = Project.find(params[:project_id])
    end

    def relationship_params
      params.require(:project_user_relationship).permit(:user_id, :incharge)
    end
end
