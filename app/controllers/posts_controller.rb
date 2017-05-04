class PostsController < ApplicationController
  # before_action :login_required

  def create
    build_post
    if @post.save
      render json: @post, status: :created, include: [:attachments]
    else
      render json: @post.errors.messages, status: :bad_request
    end
  end

  private

  def build_post
    @post = Post.new
    @post.attributes = post_params
  end

  def post_params
    params.fetch(:post, {}).permit(
      :content, attachments_attributes: %i[category url]
    )
  end
end
