class AddMultiplierToRegistries < ActiveRecord::Migration
  def change
    add_column :registries, :multiplier, :integer
  end
end
