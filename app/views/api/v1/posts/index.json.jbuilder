json.posts do
  json.array! @posts do |post|
    json.extract! post, :id, :image, :content, :comments, :created_at
  end
end
