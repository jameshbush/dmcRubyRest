class UserRoleAssignmentsController < ApplicationController
  before_action :set_user_role_assignment, only: [:show, :update, :destroy]

  # GET /user_role_assignments
  def index
    @user_role_assignments = UserRoleAssignment.all

    render json: @user_role_assignments
  end

  # GET /user_role_assignments/1
  def show
    render json: @user_role_assignment
  end

  # POST /user_role_assignments
  def create
    @user_role_assignment = UserRoleAssignment.new(user_role_assignment_params)

    if @user_role_assignment.save
      render json: @user_role_assignment, status: :created, location: @user_role_assignment
    else
      render json: @user_role_assignment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_role_assignments/1
  def update
    if @user_role_assignment.update(user_role_assignment_params)
      render json: @user_role_assignment
    else
      render json: @user_role_assignment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_role_assignments/1
  def destroy
    @user_role_assignment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_role_assignment
      @user_role_assignment = UserRoleAssignment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_role_assignment_params
      params.fetch(:user_role_assignment, {})
    end
end
