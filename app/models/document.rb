class Document < ActiveRecord::Base
  mount_uploader :doc_file, DocumentUploader, mount_on: :doc_file
  validates :doc_file, :description, presence: { message: 'Completa este campo' }
end
