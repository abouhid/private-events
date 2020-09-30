class DropUserEvent < ActiveRecord::Migration[6.0]
  def change
    drop_table :user_events
  end
end
