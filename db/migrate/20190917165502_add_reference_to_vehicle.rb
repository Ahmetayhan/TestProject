class AddReferenceToVehicle < ActiveRecord::Migration[5.0]
  def change
    change_table :vehicles do |t|
      t.references :vehicles, index: true
    end
  end
end
