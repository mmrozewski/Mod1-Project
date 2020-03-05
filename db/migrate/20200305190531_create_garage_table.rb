class CreateGarageTable < ActiveRecord::Migration[6.0]
  def change
    create_table :garages do |t|
      t.references :user
      t.references :car
    end
  end
end
