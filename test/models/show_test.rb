require 'test_helper'

class ShowTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

# test/models/post_test.rb
test "should have the necessary required validators" do
  post = Post.new
  assert_not post.valid?
  assert_equal [:title, :body], post.errors.keys
end

end
