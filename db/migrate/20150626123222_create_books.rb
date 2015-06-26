class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :isbn_no
      t.integer :author_id

      t.timestamps null: false
    end
  end
end
