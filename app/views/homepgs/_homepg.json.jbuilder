json.extract! homepg, :id, :movie_name, :release_date, :image, :video, :description, :created_at, :updated_at
json.url homepg_url(homepg, format: :json)
json.image url_for(homepg.image)
json.video url_for(homepg.video)
