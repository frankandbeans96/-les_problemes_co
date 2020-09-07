json.extract! article, :id, :title, :rich_body, :foreword, :created_at, :updated_at, :photo
json.url article_url(article, format: :json)
