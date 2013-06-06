helpers do
  def post_link(post)
    "<a href='/posts/#{post.id}'>#{post.title}</a>"
  end

  def tag_link(tag)
    "<a href='/posts?tag=#{tag.id}'>#{tag.name}</a>"
  end
end
