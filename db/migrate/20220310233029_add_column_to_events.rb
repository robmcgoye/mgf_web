class AddColumnToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :event_date, :date
    add_column :galleries, :sort_order, :integer, default: 0
    add_column :photos, :sort_order, :integer, default: 0
  end
end
