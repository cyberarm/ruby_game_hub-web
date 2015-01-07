class CreateComrades < ActiveRecord::Migration
  def change
    create_table :comrades do |t|
      t.integer :player_id
      t.integer :comrade_id
      t.boolean :accepted, default: false

      t.timestamps
    end
  end
end
