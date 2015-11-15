json.array!(@shows) do |show|
  json.extract! show, :id, :title, :description, :guest, :source
  json.url show_url(show, format: :json)
end
