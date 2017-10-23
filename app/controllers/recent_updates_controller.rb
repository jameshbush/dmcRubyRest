class RecentUpdatesController < ApplicationController
  before_action :set_recent_update, only: [:show, :update, :destroy]

  # GET /recent_updates
  def index
    @recent_updates = RecentUpdate.all

    render json: @recent_updates
  end

  # GET /recent_updates/1
  def show
    render json: @recent_update
  end

  # POST /recent_updates
  def create
    @recent_update = RecentUpdate.new(recent_update_params)

    if @recent_update.save
      render json: @recent_update, status: :created, location: @recent_update
    else
      render json: @recent_update.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recent_updates/1
  def update
    if @recent_update.update(recent_update_params)
      render json: @recent_update
    else
      render json: @recent_update.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recent_updates/1
  def destroy
    @recent_update.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recent_update
      @recent_update = RecentUpdate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recent_update_params
      params.require(:recent_update).permit(:update_type, :update_id, :parent_id, :description, :user_id, :internal_description, :attribute_name)
    end
end
