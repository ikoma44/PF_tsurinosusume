class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|

      t.integer :user_id
      t.integer :spot_id
      t.integer :fishing_spot_id
      t.integer :spot_type
      t.string :fish
      t.string :fishing
      t.string :image_id
      t.string :other_image_id
      t.string :title
      t.string :text
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
