class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|

      t.integer :user_id
      t.integer :spot_id
      t.integer :fishing_spot_id, defalut: 3
      t.integer :spot_type, defalut: 12
      t.string :fish
      t.string :fishing
      t.string :title
      t.string :text
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
