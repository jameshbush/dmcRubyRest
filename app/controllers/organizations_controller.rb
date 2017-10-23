class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :update, :destroy]
  before_action :change_address_attributes, only: [:create, :update]

  # GET /organizations
  def index
    @organizations = Organization.order(id: :asc)

    json_response(@organizations)
  end

  # GET /organizations/1
  def show
    json_response(@organization)
  end

  # POST /organizations
  def create
    @organization = Organization.create!(organization_params)
    json_response(@organization, :created)
  end

  # PATCH/PUT /organizations/1
  def update
    @organization.update!(organization_params)
    json_response(@organization)
  end

  # DELETE /organizations/1
  def destroy
    @organization.destroy
    head :no_content
  end

  #GET /organizations/dmdii_members
  def dmdii_members
    @members = paginate Organization.where('dmdii_tier is not null')

    paginate_response(@members.by_name, @members.total_entries, "count")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.find(params[:id])
    end

    def change_address_attributes
      params[:address_attributes] ||= params.delete :address
    end

    # Only allow a trusted parameter "white list" through.
    def organization_params
      params.permit(:name, :description, :type_id, :dmdii_tier, :organization_type_id, address_attributes: [:street1, :street2, :city, :state, :country, :zip])
    end
end
