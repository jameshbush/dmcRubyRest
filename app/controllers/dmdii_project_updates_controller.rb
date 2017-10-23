class DmdiiProjectUpdatesController < ApplicationController
  before_action :set_dmdii_project_update, only: [:show, :update, :destroy]

  # GET /dmdii_project_updates
  def index
    @dmdii_project_updates = DmdiiProjectUpdate.all

    render json: @dmdii_project_updates
  end

  # GET /dmdii_project_updates/1
  def show
    render json: @dmdii_project_update
  end

  # POST /dmdii_project_updates
  def create
    @dmdii_project_update = DmdiiProjectUpdate.new(dmdii_project_update_params)

    if @dmdii_project_update.save
      render json: @dmdii_project_update, status: :created, location: @dmdii_project_update
    else
      render json: @dmdii_project_update.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dmdii_project_updates/1
  def update
    if @dmdii_project_update.update(dmdii_project_update_params)
      render json: @dmdii_project_update
    else
      render json: @dmdii_project_update.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dmdii_project_updates/1
  def destroy
    @dmdii_project_update.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dmdii_project_update
      @dmdii_project_update = DmdiiProjectUpdate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dmdii_project_update_params
      params.require(:dmdii_project_update).permit(:date, :title, :description, :user_id, :dmdii_project_id, :access_level, :is_deleted)
    end
end
