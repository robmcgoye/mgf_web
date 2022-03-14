class RemoveThumbnailFromLibraries < ActiveRecord::Migration[6.1]
  def change
    remove_column :libraries, :thumbnail, :string
    remove_column :subtitles, :thumbnail, :string
  end
end
