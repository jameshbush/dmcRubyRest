class DmdiiProjectThrustsController < ApplicationController
  before_action :set_dmdii_project_thrust, only: [:show, :update, :destroy]

  # GET /dmdii_project_thrusts
  def index
    @dmdii_project_thrusts = DmdiiProjectThrust.all

    render json: @dmdii_project_thrusts
  end

  # GET /dmdii_project_thrusts/1
  def show
    render json: @dmdii_project_thrust
  end

  # POST /dmdii_project_thrusts
  def create
    @dmdii_project_thrust = DmdiiProjectThrust.new(dmdii_project_thrust_params)

    if @dmdii_project_thrust.save
      render json: @dmdii_project_thrust, status: :created, location: @dmdii_project_thrust
    else
      render json: @dmdii_project_thrust.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dmdii_project_thrusts/1
  def update
    if @dmdii_project_thrust.update(dmdii_project_thrust_params)
      render json: @dmdii_project_thrust
    else
      render json: @dmdii_project_thrust.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dmdii_project_thrusts/1
  def destroy
    @dmdii_project_thrust.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dmdii_project_thrust
      @dmdii_project_thrust = DmdiiProjectThrust.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dmdii_project_thrust_params
      params.require(:dmdii_project_thrust).permit(:name, :code)
    end
end
