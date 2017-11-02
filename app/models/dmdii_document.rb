class DmdiiDocument < ApplicationRecord
  #Model associations
  belongs_to :dmdii_project
  belongs_to :user
end
