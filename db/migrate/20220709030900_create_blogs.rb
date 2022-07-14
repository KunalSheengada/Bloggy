class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :descp
      t.string :image_url

      t.timestamps
    end
  end
end
