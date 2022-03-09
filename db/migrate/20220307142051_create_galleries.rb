class CreateGalleries < ActiveRecord::Migration[6.1]
  def change
    create_table :galleries do |t|
      t.string :title
      t.string :thumbnail
      t.timestamps
    end
    create_table :photos do |t|
      t.references :gallery, null: false, foreign_key: true
      t.string :caption
      t.string :picture
      t.timestamps
    end
  end
end
