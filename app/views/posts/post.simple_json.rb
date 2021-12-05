->(post:) {
  {
    id: post.id,
    title: post.title,
    body: post.body,
    content: "#{post.title}: #{post.body}",
  }
}
