json.post do
  json.content @post.content
  json.user_id @post.user_id
end