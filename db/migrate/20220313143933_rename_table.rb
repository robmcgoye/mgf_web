class RenameTable < ActiveRecord::Migration[6.1]
  def change
    rename_table :library_subtitles, :subtitles
    add_column :libraries, :action, :string
    remove_column :subtitles, :body, :text
  end
end
