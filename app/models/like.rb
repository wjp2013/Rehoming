class Like < ApplicationRecord
  # extends ...................................................................
  # includes ..................................................................
  # constants .................................................................
  # related macros ............................................................
  # relationships .............................................................
  belongs_to :user
  belongs_to :likeable, polymorphic: true
  # validations ...............................................................
  validates :user_id, uniqueness: { scope: %i(likeable_id likeable_type) }
  # callbacks .................................................................
  # scopes ....................................................................
  # other macros (like devise's) ..............................................
  # class methods .............................................................
  # public instance methods ...................................................
  # protected instance methods ................................................
  # private instance methods ..................................................
end
