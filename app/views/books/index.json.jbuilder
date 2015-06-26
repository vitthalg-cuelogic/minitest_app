json.array!(@books) do |book|
  json.extract! book, :id, :name, :isbn_no, :author_id
  json.url book_url(book, format: :json)
end
