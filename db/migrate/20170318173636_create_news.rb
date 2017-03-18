class CreateNews < ActiveRecord::Migration[5.0]
  def change
    create_table :news do |t|
      t.string :title
      t.text :content
      t.text :extra_desc
      t.date :expire_on
      t.string :news_img_name
      t.string :author

      t.timestamps
    end
  end
end
