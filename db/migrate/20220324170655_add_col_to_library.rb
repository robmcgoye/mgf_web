class AddColToLibrary < ActiveRecord::Migration[6.1]
  def change
    add_column :libraries, :sort_order, :integer, default: 0
    add_column :subtitles, :sort_order, :integer, default: 0
    add_column :events, :published, :boolean
    add_column :libraries, :published, :boolean
    add_column :galleries, :published, :boolean
  end
end
