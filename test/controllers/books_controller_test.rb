require 'test_helper'
# BooksControllerTest class
class BooksControllerTest < ActionController::TestCase
  test '#index has status code 200' do
    get :index
    assert_equal 200, @response.status
  end

  test '#index loads the expected books in @books' do
    get :index
    assert_not_nil assigns(:books)
  end

  test '#create should create a book' do
    assert_difference 'Book.count' do
      post :create, book: FactoryGirl.attributes_for(:book)
    end
    assert_redirected_to book_path(assigns(:book))
  end

  test '#update should update a book' do
    @book = FactoryGirl.create(:book)
    put :update, id: @book.id,
                 book: FactoryGirl.attributes_for(:book, name: 'Xyz')
    assert_equal 'Xyz', assigns(:book).name
    assert_redirected_to book_path(assigns(:book))
  end

  test '#destroy should destroy a book' do
    @book = FactoryGirl.create(:book)
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book.id
    end
    assert_redirected_to books_path
  end
end
