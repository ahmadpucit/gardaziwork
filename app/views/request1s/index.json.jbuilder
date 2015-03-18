json.array!(@request1s) do |request1|
  json.extract! request1, :id, :when, :where, :what, :negotiable, :price
  json.url request1_url(request1, format: :json)
end
