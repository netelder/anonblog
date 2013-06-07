helpers do
  def post_link(post)
    "<a href='/posts/#{post.id}'>#{post.title}</a>"
  end

  def tag_link(tag)
    "<a href='/posts?tag=#{tag.id}'>#{tag.name}</a>"
  end

  def get_tags
    tag_names = []
    Tag.all.each do | tag |
      tag_names << tag.name
    end
    p tags = tag_names.join(', ')
  end

end
