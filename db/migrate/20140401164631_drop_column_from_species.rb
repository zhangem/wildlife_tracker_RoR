class DropColumnFromSpecies < ActiveRecord::Migration
  def change
    add_column :species, :kind, :string
  end
end
