json.array!(@rishabhs) do |rishabh|
  json.extract! rishabh, :id, :name, :designation, :phone_no
  json.url rishabh_url(rishabh, format: :json)
end
