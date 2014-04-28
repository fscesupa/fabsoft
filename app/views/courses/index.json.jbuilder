json.array!(@courses) do |course|
  json.extract! course, :id, :name, :workload, :description, :start_date, :end_date, :max_cap, :min_cap, :image
  json.url course_url(course, format: :json)
end
