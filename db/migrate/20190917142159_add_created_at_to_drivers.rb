class AddCreatedAtToDrivers < ActiveRecord::Migration[5.0]
  def change
    change_table :drivers do |t|
      t.date :created_at
    end
  end
end
