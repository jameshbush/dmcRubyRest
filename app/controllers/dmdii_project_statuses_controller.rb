class DmdiiProjectStatusesController < ApplicationController
  before_action :set_dmdii_project_status, only: [:show, :update, :destroy]

  # GET /dmdii_project_statuses
  def index
    @dmdii_project_statuses = DmdiiProjectStatus.all

    render json: @dmdii_project_statuses
  end

  # GET /dmdii_project_statuses/1
  def show
    render json: @dmdii_project_status
  end

  # POST /dmdii_project_statuses
  def create
    @dmdii_project_status = DmdiiProjectStatus.new(dmdii_project_status_params)

    if @dmdii_project_status.save
      render json: @dmdii_project_status, status: :created, location: @dmdii_project_status
    else
      render json: @dmdii_project_status.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dmdii_project_statuses/1
  def update
    if @dmdii_project_status.update(dmdii_project_status_params)
      render json: @dmdii_project_status
    else
      render json: @dmdii_project_status.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dmdii_project_statuses/1
  def destroy
    @dmdii_project_status.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dmdii_project_status
      @dmdii_project_status = DmdiiProjectStatus.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dmdii_project_status_params
      params.require(:dmdii_project_status).permit(:name)
    end
end
