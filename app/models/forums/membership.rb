class Forums::Membership < ApplicationRecord
  # table name ................................................................
  self.table_name = 'forum_memberships'
  # extends ...................................................................
  # includes ..................................................................
  # constants .................................................................
  # relationships .............................................................
  belongs_to :user, touch: true
  belongs_to :forum
  # validations ...............................................................
  validates :forum_id, uniqueness: { scope: :user_id }
  # callbacks .................................................................
  # scopes ....................................................................
  # additional config (i.e. accepts_nested_attribute_for etc...) ..............
  enum role: {
    quanzhu:         10, # 圈主
    jiabin:          20, # 嘉宾
    guanliyuan:      30, # 管理员
    putongchengyuan: 40, # 普通成员
    lahei:           50  # 拉黑
  }
  encrypted_id key: 'MhnjnhNQZxubL9'
  # class methods .............................................................
  # public instance methods ...................................................
  # protected instance methods ................................................
  # private instance methods ..................................................
end
