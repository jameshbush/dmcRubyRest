class UserBasicSerializer < ApplicationSerializer
  attributes :realname, :email
  attribute :firstname, key: "firstName"
  attribute :lastname, key: "lastName"
  attribute :user_name, key: "displayName"
end
