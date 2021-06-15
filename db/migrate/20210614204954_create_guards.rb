class CreateGuards < ActiveRecord::Migration[6.1]
  def change
    create_table :guards do |t|
      t.datetime :guard_date
      t.references :worker, null: false, foreign_key: true
      t.references :medical_center, null: false, foreign_key: true

      t.timestamps
    end
  end
end
