class AddColPages < ActiveRecord::Migration[6.1]
  def change
    add_column :pages, :body, :text
  end
end
