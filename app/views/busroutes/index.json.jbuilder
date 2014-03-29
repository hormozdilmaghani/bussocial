json.array!(@busroutes) do |busroute|
  json.extract! busroute, :id, :title, :description
  json.url busroute_url(busroute, format: :json)
end
