class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.datetime :publish_date
      t.integer :author_id
      t.integer :reader_id
    end
  end
end
