class CreatePlayedWiths < ActiveRecord::Migration
  def change
    create_table :played_withs do |t|
      t.integer :player_id, required: true # Person Player played with, not Player.
      t.integer :activity_id, required: true

      t.timestamps
    end
  end
end
