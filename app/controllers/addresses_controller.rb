class AddressesController < ApplicationController
  before_action :set_organization
  before_action :set_organization_address, only: [:show, :update, :destroy]

  # GET organizations/1/address
  def show
    json_response(@address)
  end

  # POST organizations/1/address
  def create
    @address = @organization.address
    @address.create!(address_params)
    json_response(@organization, :created)
  end

  # PATCH/PUT organizations/1/address
  def update
    @address.update!(address_params)
    json_response(@organization)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.find(params[:organization_id])
    end

    def set_organization_address
      @address = @organization.address if @organization
    end

    # Only allow a trusted parameter "white list" through.
    def address_params
      params.permit(:street1, :street2, :city, :state, :country, :zip, :organization_id)
    end
end
