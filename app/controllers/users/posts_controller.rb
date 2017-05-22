class Users::PostsController < ApplicationController
  def index
    load_posts
    render json: @posts, include: %i(forum attachments)
  end

  private

  def load_posts
    @posts = current_user.posts
  end
end
