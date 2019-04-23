json.posts do
  json.array! @posts do |post|
    json.extract! post, :id, :image, :content
    json.array! @post.comments do |com|
      json.extract! comment, :id, :name, :text
    end
  end
end
