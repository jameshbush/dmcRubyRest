class DmdiiDocumentsController < ApplicationController
  before_action :set_dmdii_document, only: [:show, :update, :destroy]

  # GET /dmdii_documents
  def index
    @dmdii_documents = DmdiiDocument.all

    render json: @dmdii_documents
  end

  # GET /dmdii_documents/1
  def show
    render json: @dmdii_document
  end

  # POST /dmdii_documents
  def create
    @dmdii_document = DmdiiDocument.new(dmdii_document_params)

    if @dmdii_document.save
      render json: @dmdii_document, status: :created, location: @dmdii_document
    else
      render json: @dmdii_document.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dmdii_documents/1
  def update
    if @dmdii_document.update(dmdii_document_params)
      render json: @dmdii_document
    else
      render json: @dmdii_document.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dmdii_documents/1
  def destroy
    @dmdii_document.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dmdii_document
      @dmdii_document = DmdiiDocument.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dmdii_document_params
      params.require(:dmdii_document).permit(:name, :url, :dmdii_project_id, :user_id, :modified, :expires, :is_deleted, :file_type_id, :verified, :access_level, :version, :sha256, :encryption_type, :scan_date)
    end
end
