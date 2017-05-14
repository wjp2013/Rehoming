module ActsAsFavorable
  module Favoriter
    extend ActiveSupport::Concern

    included do
      has_many :favorites
    end

    def favored?(obj)
      find_favorites(obj).any?
    end

    def favor(obj)
      return unless obj.respond_to? :favorable?
      find_favorites(obj).create
    end

    def unfavor(obj)
      return unless obj.respond_to? :favorable?
      find_favorites(obj).delete_all
    end

    def find_favorites(favorable)
      favorites.where(favorable: favorable)
    end
  end
end
