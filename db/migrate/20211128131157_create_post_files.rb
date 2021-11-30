class CreatePostFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :post_files do |t|

      t.integer :post_id
      t.string :other_image_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
