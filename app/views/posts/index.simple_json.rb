{
  posts: @posts.map { |post|
    partial!("posts/post", post: post)
  }
}
