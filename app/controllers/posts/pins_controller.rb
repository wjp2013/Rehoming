class Posts::PinsController < ApplicationController
  include ActsAsAction
  define_action_names verb: :pin, unverb: :unpin, authorize_name: :manage_pin?
end
