json.extract! workshop, :id, :title, :organized_by, :organizing_member, :description, :additional_desc, :image, :register_link, :workshop_date, :expire_on, :category, :created_at, :updated_at
json.url workshop_url(workshop, format: :json)
