class CreateRopes < ActiveRecord::Migration[5.0]
  def change
    create_table :ropes do |t|
      t.string :Name
      t.text :Rope

      t.timestamps
    end
  end
end
