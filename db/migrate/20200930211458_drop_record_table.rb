class DropRecordTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :record_tables
  end
end
