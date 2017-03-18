json.extract! news, :id, :title, :content, :extra_desc, :expire_on, :news_img_name, :author, :created_at, :updated_at
json.url news_url(news, format: :json)
