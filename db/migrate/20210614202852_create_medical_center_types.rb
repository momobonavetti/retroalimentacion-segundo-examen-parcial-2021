class CreateMedicalCenterTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_center_types do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
