json.extract! reviewpg, :id, :review, :rating, :homepg_id, :created_at, :updated_at
json.url reviewpg_url(reviewpg, format: :json)
