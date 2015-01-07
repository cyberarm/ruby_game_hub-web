class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|

      t.string  :event, required: true
      t.text    :description
      t.integer :player_id, required: true
      t.timestamps
    end
  end
end
