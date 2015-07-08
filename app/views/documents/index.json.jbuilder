json.array!(@documents) do |document|
  json.extract! document, :id, :doc_file, :description
  json.url document_url(document, format: :json)
end
