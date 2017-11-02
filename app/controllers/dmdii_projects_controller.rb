class DmdiiProjectsController < ApplicationController
  before_action :set_dmdii_project, only: [:show, :update, :destroy]
  before_action :set_nested_dmdii_project, only: [:fetch_updates, :fetch_documents, :contributing_organizations]

  # GET /dmdii_projects
  def index
    @dmdii_projects = paginate DmdiiProject.all
    paginate_response(@dmdii_projects, @dmdii_projects.total_entries, "count", "data")
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

  # GET /organizations/1/dmdii_projects
  def fetch_by_org
    @dmdii_projects = paginate DmdiiProject.where(organization_dmdii_member_id: params[:organization_id])
    paginate_response(@dmdii_projects, @dmdii_projects.total_entries, "count", "data")
  end

  # GET /dmdii_projects/1/dmdii_project_updates
  def fetch_updates
    json_response(@dmdii_project.dmdii_project_updates)
  end

  # GET /dmdii_projects/1/dmdii_documents
  def fetch_documents
    json_response(@dmdii_project.dmdii_documents)
  end

  # GET dmdii_projects/1/contributing_organizations
  def contributing_organizations
    json_response(@dmdii_project.organizations)
  end

  # GET /dmdii_projects/member/active
  def active
    ids = params[:dmdiiMemberId].split(",")
    @dmdii_projects = paginate DmdiiProject.where(organization_dmdii_member_id: ids)
    paginate_response(@dmdii_projects, @dmdii_projects.total_entries, "count", "data")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dmdii_project
      @dmdii_project = DmdiiProject.find(params[:id])
    end

    def set_nested_dmdii_project
      @dmdii_project = DmdiiProject.find(params[:dmdii_project_id])
    end

    # Only allow a trusted parameter "white list" through.
    def dmdii_project_params
      params.permit(:status_id, :awarded_date, :end_date, :project_title,
      :project_summary, :principal_point_of_contact_id,
      :organization_dmdii_member_id, :principal_investigator_id, :focus_area_id,
      :thrust_id, :project_root_number, :project_call_number, :project_number,
      :cost_share, :cost_share, :dmdii_funding, :dmdii_funding, :is_deleted,
      :is_event)
    end
end
