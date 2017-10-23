class DmdiiDocument < ApplicationRecord
  belongs_to :dmdii_project
  belongs_to :user
end
