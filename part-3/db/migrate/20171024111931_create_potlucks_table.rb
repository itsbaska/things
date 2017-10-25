class CreatePotlucksTable < ActiveRecord::Migration
  def change
    create_table :potlucks do |t|
      t.string   :name, null: false
      t.datetime :starts_at, null: false
      t.string   :location, null: false
      t.integer  :host_id

      t.timestamps
    end
  end
end
