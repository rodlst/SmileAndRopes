class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.references :rope, foreign_key: true

      t.timestamps
    end
  end
end
