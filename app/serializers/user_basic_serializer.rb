class UserBasicSerializer < ApplicationSerializer
  attribute :realname
  attribute :user_name, key: "displayName"
end
