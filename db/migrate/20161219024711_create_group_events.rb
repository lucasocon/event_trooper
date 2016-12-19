class CreateGroupEvents < ActiveRecord::Migration
  def change
    create_table :group_events do |t|
      t.date :started_at
      t.integer :duration
      t.string :name
      t.text :description
      t.string :location
      t.boolean :published

      t.timestamps null: false
    end
  end
end
