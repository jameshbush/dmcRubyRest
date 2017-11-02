class DmdiiMemberContactsController < ApplicationController
  before_action :set_dmdii_member_contact, only: [:show, :update, :destroy]

  # GET /dmdii_member_contacts
  def index
    @dmdii_member_contacts = DmdiiMemberContact.all

    render json: @dmdii_member_contacts
  end

  # GET /dmdii_member_contacts/1
  def show
    render json: @dmdii_member_contact
  end

  # POST /dmdii_member_contacts
  def create
    @dmdii_member_contact = DmdiiMemberContact.new(dmdii_member_contact_params)

    if @dmdii_member_contact.save
      render json: @dmdii_member_contact, status: :created, location: @dmdii_member_contact
    else
      render json: @dmdii_member_contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dmdii_member_contacts/1
  def update
    if @dmdii_member_contact.update(dmdii_member_contact_params)
      render json: @dmdii_member_contact
    else
      render json: @dmdii_member_contact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dmdii_member_contacts/1
  def destroy
    @dmdii_member_contact.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dmdii_member_contact
      @dmdii_member_contact = DmdiiMemberContact.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dmdii_member_contact_params
      params.require(:dmdii_member_contact).permit(:references, :references, :first_name, :last_name, :email)
    end
end
