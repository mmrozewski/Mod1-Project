class CreateCarTable < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :starting_price
      t.integer :avg_mpg
      t.string :drivetrain
      t.string :size
      t.string :vehicle_class
      t.integer :driver_enjoyment
      t.integer :vehicle_style
      t.boolean :hybrid_or_electric
    end
  end
end
