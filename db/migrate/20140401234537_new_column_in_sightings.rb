class NewColumnInSightings < ActiveRecord::Migration
  def change
    add_column :sightings, :time, :string
  end
end
