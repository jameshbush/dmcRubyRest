class DmdiiProjectContactsController < ApplicationController
  before_action :set_dmdii_project_contact, only: [:show, :update, :destroy]

  # GET /dmdii_project_contacts
  def index
    @dmdii_project_contacts = DmdiiProjectContact.all

    render json: @dmdii_project_contacts
  end

  # GET /dmdii_project_contacts/1
  def show
    render json: @dmdii_project_contact
  end

  # POST /dmdii_project_contacts
  def create
    @dmdii_project_contact = DmdiiProjectContact.new(dmdii_project_contact_params)

    if @dmdii_project_contact.save
      render json: @dmdii_project_contact, status: :created, location: @dmdii_project_contact
    else
      render json: @dmdii_project_contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dmdii_project_contacts/1
  def update
    if @dmdii_project_contact.update(dmdii_project_contact_params)
      render json: @dmdii_project_contact
    else
      render json: @dmdii_project_contact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dmdii_project_contacts/1
  def destroy
    @dmdii_project_contact.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dmdii_project_contact
      @dmdii_project_contact = DmdiiProjectContact.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dmdii_project_contact_params
      params.require(:dmdii_project_contact).permit(:first_name, :last_name, :email)
    end
end
