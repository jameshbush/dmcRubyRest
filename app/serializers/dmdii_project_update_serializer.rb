class DmdiiProjectUpdateSerializer < ApplicationSerializer
  attributes :id, :date, :title, :description, :access_level, :is_deleted
  # has_one :user
  # has_one :dmdii_project
end
