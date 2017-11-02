class OrganizationContactsController < ApplicationController
  before_action :set_organization_contact, only: [:show, :update, :destroy]

  # GET /organization_contacts
  def index
    @organization_contacts = OrganizationContact.all

    render json: @organization_contacts
  end

  # GET /organization_contacts/1
  def show
    render json: @organization_contact
  end

  # POST /organization_contacts
  def create
    @organization_contact = OrganizationContact.new(organization_contact_params)

    if @organization_contact.save
      render json: @organization_contact, status: :created, location: @organization_contact
    else
      render json: @organization_contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /organization_contacts/1
  def update
    if @organization_contact.update(organization_contact_params)
      render json: @organization_contact
    else
      render json: @organization_contact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /organization_contacts/1
  def destroy
    @organization_contact.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_contact
      @organization_contact = OrganizationContact.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def organization_contact_params
      params.require(:organization_contact).permit(:organization_id, :organization_contact_type_id, :name, :phone_number, :title, :email)
    end
end
