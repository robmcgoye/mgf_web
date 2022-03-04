class TinyImages < ActiveRecord::Migration[6.1]
  def change
    create_table :tiny_images do |t|
      t.string :file
      t.string :alt
      t.string :hint
      
      t.timestamps
    end
  end
end
