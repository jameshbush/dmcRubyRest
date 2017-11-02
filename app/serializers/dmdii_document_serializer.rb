class DmdiiDocumentSerializer < ApplicationSerializer
  attributes :id, :name, :url, :modified, :expires, :is_deleted, :file_type_id, :verified, :access_level, :version, :sha256, :encryption_type, :scan_date
  # has_one :dmdii_project
  # has_one :user
end
