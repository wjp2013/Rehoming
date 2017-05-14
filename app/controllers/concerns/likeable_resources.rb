module LikeableResources
  extend ActiveSupport::Concern

  module ClassMethods
    def likeable_resources(options = {})
      cattr_accessor :action, :resource_name
      self.action = options[:action].to_sym || :like
      self.resource_name = 'likes'
    end
  end

  def create
    create_able_resource
  end

  private

  def verb_name
    :like
  end

  def unverb_name
    :dislike
  end
end
