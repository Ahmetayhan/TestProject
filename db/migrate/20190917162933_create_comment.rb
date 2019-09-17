class CreateComment < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :comment, limit:250
    end
  end
end
