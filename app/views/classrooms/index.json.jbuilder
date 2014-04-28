json.array!(@classrooms) do |classroom|
  json.extract! classroom, :id, :course, :user, :paid, :payment_date, :validity_date
  json.url classroom_url(classroom, format: :json)
end
