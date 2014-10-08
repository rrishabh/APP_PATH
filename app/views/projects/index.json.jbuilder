json.array!(@projects) do |project|
  json.extract! project, :id, :reviews, :ratings
  json.url project_url(project, format: :json)
end
