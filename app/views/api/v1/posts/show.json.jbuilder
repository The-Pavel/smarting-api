json.extract! @post, :id, :image, :content, :searched
json.date @post.created_at.strftime("%H:%M")
json.comments @post.comments do |com|
  json.extract! com, :name, :text
  json.date com.created_at.strftime("%H:%M")
end
