class AddTermsConditionsAndIsDmdiiMemberToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :termsConditions, :boolean
    add_column :users, :isDMDIIMember, :boolean
  end
end
