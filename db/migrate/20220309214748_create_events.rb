class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :thumbnail
      t.text :body
      t.timestamps
    end

    create_table :libraries do |t|
      t.string :title
      t.string :link
      t.string :thumbnail
      t.text :body
      t.timestamps
    end

    create_table :library_subtitles do |t|
      t.references :library, null: false, foreign_key: true
      t.string :title
      t.string :link
      t.string :thumbnail
      t.text :body
      t.timestamps
    end

  end
end
