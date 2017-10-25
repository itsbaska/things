class CreateAttendancesTable < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer  :attendee_id, null: false
      t.integer  :potluck_id, null: false
      t.string   :dish

      t.timestamps
    end
  end
end
