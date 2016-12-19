class AddDeleteFieldToGroupEvent < ActiveRecord::Migration
  def change
    add_column :group_events, :deleted, :boolean, default: false
  end
end
