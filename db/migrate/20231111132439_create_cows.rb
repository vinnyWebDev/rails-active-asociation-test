class CreateCows < ActiveRecord::Migration[7.0]
  def change
    create_table :cows do |t|
      t.integer :tag
      t.date :dob
      t.string :breed
      t.integer :dam
      t.integer :docility
      t.integer :agression
      t.integer :fertility
      t.integer :calving
      t.integer :milk
      t.integer :calf
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
