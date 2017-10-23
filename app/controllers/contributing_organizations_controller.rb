class ContributingOrganizationsController < ApplicationController
  before_action :set_contributing_organization, only: [:show, :update, :destroy]

  # GET /contributing_organizations
  def index
    @contributing_organizations = ContributingOrganization.all

    render json: @contributing_organizations
  end

  # GET /contributing_organizations/1
  def show
    render json: @contributing_organization
  end

  # POST /contributing_organizations
  def create
    @contributing_organization = ContributingOrganization.new(contributing_organization_params)

    if @contributing_organization.save
      render json: @contributing_organization, status: :created, location: @contributing_organization
    else
      render json: @contributing_organization.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contributing_organizations/1
  def update
    if @contributing_organization.update(contributing_organization_params)
      render json: @contributing_organization
    else
      render json: @contributing_organization.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contributing_organizations/1
  def destroy
    @contributing_organization.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contributing_organization
      @contributing_organization = ContributingOrganization.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contributing_organization_params
      params.require(:contributing_organization).permit(:dmdii_project_id, :organization_id)
    end
end
