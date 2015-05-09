class Document < ActiveRecord::Base
  mount_uploader :doc_file, DocumentUploader, mount_on: :doc_file
end
