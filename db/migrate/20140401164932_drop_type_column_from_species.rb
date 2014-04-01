class DropTypeColumnFromSpecies < ActiveRecord::Migration
  def change
    remove_column :species, :type, :string
  end
end
