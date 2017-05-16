class PostsController < ApplicationController
  def show
    load_post
    render json: @post, include: [comments: [:attachments, :comments]], serializer: PostSerializer
  end

  def create
    build_post
    if @post.save
      render json: @post, status: :created, serializer: PostSerializer
    else
      render json: @post.errors.messages, status: :bad_request
    end
  end

  private

  def load_post
    @post = Post.find(params[:id])
  end

  def build_post
    @post = Post.new
    @post.attributes = post_params.merge(user_id: current_user.id)
  end

  def post_params
    attrs = [:group_id, :content, attachments_attributes: %i(category url)]
    ActiveModelSerializers::Deserialization.jsonapi_parse(params, only: attrs)
  end
end
