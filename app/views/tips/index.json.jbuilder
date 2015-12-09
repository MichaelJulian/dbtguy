json.array!(@tips) do |tip|
  json.extract! tip, :id, :title, :author, :caption, :situation, :do, :dont, :quote, :created_at
  json.url tip_url(tip, format: :json)
end
