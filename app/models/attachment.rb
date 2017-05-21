class Attachment < ApplicationRecord
  # extends ...................................................................
  # includes ..................................................................
  # constants .................................................................
  # relationships .............................................................
  belongs_to :attachable, polymorphic: true, optional: true
  # validations ...............................................................
  validates :category, :url, presence: true
  # callbacks .................................................................
  # scopes ....................................................................
  # additional config (i.e. accepts_nested_attribute_for etc...) ..............
  encrypted_id key: 'Kpovojv2sJzPnb'
  enum category: {
    image: 10,
    video: 20
  }
  # class methods .............................................................
  # public instance methods ...................................................
  # protected instance methods ................................................
  # private instance methods ..................................................
end
