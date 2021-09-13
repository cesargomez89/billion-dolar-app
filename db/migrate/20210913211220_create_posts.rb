class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :user
      t.string :body
      t.integer :app
      t.timestamps
    end
  end
end
