class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      
      t.integer :user_id
      t.integer :post_id
      t.string :blog_comment
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
