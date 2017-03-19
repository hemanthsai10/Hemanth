class CreateWorkshops < ActiveRecord::Migration[5.0]
  def change
    create_table :workshops do |t|
      t.string :title
      t.string :organized_by
      t.string :organizing_member
      t.text :description
      t.text :additional_desc
      t.string :image
      t.string :register_link
      t.date :workshop_date
      t.date :expire_on
      t.string :category

      t.timestamps
    end
  end
end
