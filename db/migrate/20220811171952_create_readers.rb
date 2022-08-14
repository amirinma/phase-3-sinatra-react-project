class CreateReaders < ActiveRecord::Migration[6.1]
  def change
    create_table :readers do |t|
      t.integer :card_id
      t.string :first_name
      t.string :last_name
    end
  end
end
