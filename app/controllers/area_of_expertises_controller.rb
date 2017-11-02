class AreaOfExpertisesController < ApplicationController
  before_action :set_area_of_expertise, only: [:show, :update, :destroy]

  # GET /area_of_expertises
  def index
    @area_of_expertises = AreaOfExpertise.all

    render json: @area_of_expertises
  end

  # GET /area_of_expertises/1
  def show
    render json: @area_of_expertise
  end

  # POST /area_of_expertises
  def create
    @area_of_expertise = AreaOfExpertise.new(area_of_expertise_params)

    if @area_of_expertise.save
      render json: @area_of_expertise, status: :created, location: @area_of_expertise
    else
      render json: @area_of_expertise.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /area_of_expertises/1
  def update
    if @area_of_expertise.update(area_of_expertise_params)
      render json: @area_of_expertise
    else
      render json: @area_of_expertise.errors, status: :unprocessable_entity
    end
  end

  # DELETE /area_of_expertises/1
  def destroy
    @area_of_expertise.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area_of_expertise
      @area_of_expertise = AreaOfExpertise.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def area_of_expertise_params
      params.require(:area_of_expertise).permit(:name, :description, :link, :is_dmdii)
    end
end
