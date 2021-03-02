require 'test_helper'

class UserStoriesTest < ActionDispatch::IntegrationTest
  fixtures :products

  LineItem.delete_all
  Order.delete_all
  ruby_book = products(:ruby)
  # test "the truth" do
  #   assert true
  # end
end
