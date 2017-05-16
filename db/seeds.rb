# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

victor = User.create(unionid: '11xzxvzcvasvas1', nickname: 'Victor', headimgurl: 'ba.jpg')
yuki = User.create(unionid: 'u3YBkQDBVetKaVJknprv', nickname: 'Yuki', headimgurl: 'ba.jpg')
roc = User.create(unionid: 'RwcP9YchpgxLDgzwAjmb', nickname: 'Roc', headimgurl: 'ba.jpg')
group_a = Group.create(title: 'Free Group', category: 10)
post = Post.create(user_id: victor.id, group_id: group_a.id, content: 'hahaha')
post.attachments.create(category: 'image', url: 'http://www.baidu.com/a.jpg')
post.attachments.create(category: 'image', url: 'http://www.baidu.com/b.jpg')

Post.create(user_id: victor.id, group_id: group_a.id, content: 'today is fine')
Post.create(user_id: yuki.id, group_id: group_a.id, content: 'cool man')

comment = post.comments.create(user: victor, content: "commment with attachments")
comment.comments.create(user: yuki, content: "commment with comments 1")
comment.comments.create(user: roc, content: "commment with comments 2")
comment.attachments.create(category: 'image', url: 'http://www.baidu.com/hello.jpg')
15.times do |i|
  post.comments.create(user: victor, content: "this is the #{i} commment.")
end

victor.favor post
