require 'test_helper'
# AuthorTest class
class AuthorTest < ActiveSupport::TestCase
  test 'author object creates' do
    author = FactoryGirl.build(:author)
    assert_kind_of Author, author, 'not created Author object'
  end

  test 'presence of name' do
    author = FactoryGirl.build(:author, name: '')
    assert_equal false, author.valid?, 'author saved even after empty name'
  end
end
