class Book < ActiveRecord::Base
  validates :name, :isbn_no, presence: true
  validates :name, length: { maximum: 10 }
end
