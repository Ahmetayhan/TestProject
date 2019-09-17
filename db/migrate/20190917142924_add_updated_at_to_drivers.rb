class AddUpdatedAtToDrivers < ActiveRecord::Migration[5.0]
  def change
    change_table :drivers do |t|
      t.date :updated_at
    end
  end
end
