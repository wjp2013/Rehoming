require 'test_helper'

class Users::PostsControllerTest < ActionDispatch::IntegrationTest
  test '我的帖子列表' do
    get user_posts_url(users(:victor)), headers: @headers
    assert_response :success
  end
end
