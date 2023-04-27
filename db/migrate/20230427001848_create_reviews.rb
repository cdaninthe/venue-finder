class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :comment
      t.integer :user_id
      t.integer :venue_id

      t.timestamps
    end
  end
end
