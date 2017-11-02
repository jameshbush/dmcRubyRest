class AddMembershipStartDateMembershipEndDateToOrganizations < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :membership_start_date, :date
    add_column :organizations, :membership_end_date, :date
  end
end
