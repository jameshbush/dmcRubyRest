class DmdiiQuickLinksController < ApplicationController
  before_action :set_dmdii_quick_link, only: [:show, :update, :destroy]

  # GET /dmdii_quick_links
  def index
    @dmdii_quick_links = DmdiiQuickLink.limit(params[:limit]).order(id: :desc)

    render json: @dmdii_quick_links
  end

  # GET /dmdii_quick_links/1
  def show
    render json: @dmdii_quick_link
  end

  # POST /dmdii_quick_links
  def create
    @dmdii_quick_link = DmdiiQuickLink.new(dmdii_quick_link_params)

    if @dmdii_quick_link.save
      render json: @dmdii_quick_link, status: :created, location: @dmdii_quick_link
    else
      render json: @dmdii_quick_link.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dmdii_quick_links/1
  def update
    if @dmdii_quick_link.update(dmdii_quick_link_params)
      render json: @dmdii_quick_link
    else
      render json: @dmdii_quick_link.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dmdii_quick_links/1
  def destroy
    @dmdii_quick_link.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dmdii_quick_link
      @dmdii_quick_link = DmdiiQuickLink.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dmdii_quick_link_params
      params.require(:dmdii_quick_link).permit(:text, :link, :display_name, :dmdii_document_id)
    end
end
