class CreateWorkerTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :worker_types do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
