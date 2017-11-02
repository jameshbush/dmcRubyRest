class RecentUpdateSerializer < ApplicationSerializer
  attributes :id, :update_type, :update_id, :parent_id, :description, :user_id, :internal_description, :attribute_name
end
