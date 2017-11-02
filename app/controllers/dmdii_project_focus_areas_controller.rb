class DmdiiProjectFocusAreasController < ApplicationController
  before_action :set_dmdii_project_focus_area, only: [:show, :update, :destroy]

  # GET /dmdii_project_focus_areas
  def index
    @dmdii_project_focus_areas = DmdiiProjectFocusArea.all

    render json: @dmdii_project_focus_areas
  end

  # GET /dmdii_project_focus_areas/1
  def show
    render json: @dmdii_project_focus_area
  end

  # POST /dmdii_project_focus_areas
  def create
    @dmdii_project_focus_area = DmdiiProjectFocusArea.new(dmdii_project_focus_area_params)

    if @dmdii_project_focus_area.save
      render json: @dmdii_project_focus_area, status: :created, location: @dmdii_project_focus_area
    else
      render json: @dmdii_project_focus_area.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dmdii_project_focus_areas/1
  def update
    if @dmdii_project_focus_area.update(dmdii_project_focus_area_params)
      render json: @dmdii_project_focus_area
    else
      render json: @dmdii_project_focus_area.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dmdii_project_focus_areas/1
  def destroy
    @dmdii_project_focus_area.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dmdii_project_focus_area
      @dmdii_project_focus_area = DmdiiProjectFocusArea.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dmdii_project_focus_area_params
      params.require(:dmdii_project_focus_area).permit(:name)
    end
end
