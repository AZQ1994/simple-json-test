json.posts do
  json.partial! 'post', collection: @posts, as: 'post'
end
