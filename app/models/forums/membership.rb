class Forums::Membership < ApplicationRecord
  # table name ................................................................
  self.table_name = 'forum_memberships'
  # extends ...................................................................
  # includes ..................................................................
  include MembershipState
  # constants .................................................................
  # relationships .............................................................
  belongs_to :user, touch: true
  belongs_to :forum
  # validations ...............................................................
  validates :forum_id, uniqueness: { scope: :user_id }
  # callbacks .................................................................
  # scopes ....................................................................
  # additional config (i.e. accepts_nested_attribute_for etc...) ..............
  encrypted_id key: 'MhnjnhNQZxubL9'
  delegate :forum_preferences, to: :user
  # class methods .............................................................
  # public instance methods ...................................................
  def preference
    forum_preferences.find_by(forum: forum)
  end

  def join_again
    # ignore request when status is ignored or active
    pend! if rejected?
    rejoin! if exited?
  end
  # protected instance methods ................................................
  # private instance methods ..................................................
end
