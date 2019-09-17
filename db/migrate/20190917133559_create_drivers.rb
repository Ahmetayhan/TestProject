class CreateDrivers < ActiveRecord::Migration[5.0]
  def change
    create_table :drivers do |t|
      t.string   :name, limit:50
      t.string   :last_name, limit: 50
      t.integer  :tc_no
      t.string   :tel, limit: 20
      t.string   :address
      t.date     :birth_date
    end
  end
end
