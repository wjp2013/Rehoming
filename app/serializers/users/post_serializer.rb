class Users::PostSerializer < ApplicationSerializer
  cache key: 'user_post'
  attributes :content

  belongs_to :forum, serializer: Users::ForumSerializer
  has_many :attachments
end
