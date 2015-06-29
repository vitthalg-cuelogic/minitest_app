require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'presence of book name' do
    user = FactoryGirl.build(:book, { name: '' })
    assert_equal false, user.valid?, 'Book is valid even after name is empty'
  end

  test 'presence of book ISBN number' do
    user = FactoryGirl.build(:book, { isbn_no: '' })
    assert_equal false, user.valid?, 'Book is valid even afer isbn_no is empty'
  end

  test 'length of book name should be less than 10 characters' do
    user = FactoryGirl.build(:book, { name: 'asdfglkjqwerpoiuy' })
    assert_equal false, user.valid?, 'Book is valid even after name has more than 10 characters'
  end

end

