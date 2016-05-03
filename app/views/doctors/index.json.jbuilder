json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :email, :room, :officeno, :cellno, :arrivaltime, :leavetime
  json.url doctor_url(doctor, format: :json)
end
