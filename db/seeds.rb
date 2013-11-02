Post.create({
  title: 'New post',
  body:  'A body!!!',
  section: Section.create(name: 'ruby')
}).tap do |post|

  short_tag = post.tags.create(name: 'short')
  whiny_tag = post.tags.create(name: 'whiny')
  happy_tag = post.tags.create(name: 'happy')

  post.comments.create(body: 'what a dumb post').tap do |comment|
    comment.tags.concat short_tag, whiny_tag
  end

  post.comments.create(body: 'i liked it').tap do |comment|
    comment.tags.concat short_tag, happy_tag
  end
end
