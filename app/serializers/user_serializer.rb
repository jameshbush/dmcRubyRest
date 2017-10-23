class UserSerializer < ApplicationSerializer
  attributes :id, :realname, :isDMDIIMember, :termsConditions
  attribute :user_name, key: "displayName"
end
