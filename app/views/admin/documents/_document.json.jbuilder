json.extract! document, :id, :name, :attachment, :created_at, :updated_at
json.url document_url(document, format: :json)
