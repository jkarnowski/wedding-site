class AddRemainingAmountToRegistries < ActiveRecord::Migration
  def change
    add_column :registries, :remaining_amount, :integer
  end
end
