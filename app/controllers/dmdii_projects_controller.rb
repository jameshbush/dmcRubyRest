class DmdiiProjectsController < ApplicationController
  before_action :set_dmdii_project, only: [:show, :update, :destroy]

  # GET /dmdii_projects
  def index
    @dmdii_projects = DmdiiProject.all

    json_response(@dmdii_projects)
  end

  # GET /dmdii_projects/1
  def show
    json_response(@dmdii_project)
  end

  # POST /dmdii_projects
  def create
    @dmdii_project = DmdiiProject.create!(dmdii_project_params)
    json_response(@dmdii_project, :created)
  end

  # PATCH/PUT /dmdii_projects/1
  def update
    @dmdii_project.update!(dmdii_project_params)
    json_response(@dmdii_project)
  end

  # DELETE /dmdii_projects/1
  def destroy
    @dmdii_project.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dmdii_project
      @dmdii_project = DmdiiProject.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dmdii_project_params
      params.permit(:status_id, :awarded_date, :end_date, :project_title, :project_summary, :principal_point_of_contact_id, :organization_dmdii_member_id, :principal_investigator_id, :focus_area_id, :thrust_id, :project_root_number, :project_call_number, :project_number, :cost_share, :cost_share, :dmdii_funding, :dmdii_funding, :is_deleted, :is_event)
    end
end
