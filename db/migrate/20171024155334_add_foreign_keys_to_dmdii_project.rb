class AddForeignKeysToDmdiiProject < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :dmdii_projects, :dmdii_project_statuses, column: :status_id
    add_foreign_key :dmdii_projects, :dmdii_project_thrusts, column: :thrust_id
    add_foreign_key :dmdii_projects, :dmdii_project_focus_areas, column: :focus_area_id
  end
end
