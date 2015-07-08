json.array!(@articles) do |article|
  json.extract! article, :id, :title, :content, :slug, :tags, :user_id, :important
  json.url article_url(article, format: :json)
end
