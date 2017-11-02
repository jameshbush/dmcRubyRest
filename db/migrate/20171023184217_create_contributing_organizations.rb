class CreateContributingOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :contributing_organizations do |t|
      t.references :dmdii_project, foreign_key: true
      t.references :organization, foreign_key: true
    end
  end
end
