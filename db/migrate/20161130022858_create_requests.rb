class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :book_title
      t.date :book_publish_date
      t.string :book_author
      t.integer :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
