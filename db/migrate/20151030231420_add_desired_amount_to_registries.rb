class AddDesiredAmountToRegistries < ActiveRecord::Migration
  def change
    add_column :registries, :desired_amount, :integer
  end
end
