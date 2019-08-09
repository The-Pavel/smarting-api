json.extract! @post, :id, :image, :content, :searched
json.date @post.created_at.strftime("%m/%d/%Y")
json.comments @post.comments do |com|
  json.extract! com, :name, :text
  json.date com.created_at.strftime("%m/%d")
end
