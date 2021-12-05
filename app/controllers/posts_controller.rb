class PostsController < ApplicationController
  include SimpleJson::SimpleJsonRenderable
  def index
    @posts = (1..100).map { |i|
      Post.new(i, "title #{i}", "body #{i}")
    }
  end
end
