class CreateRegistries < ActiveRecord::Migration
  def change
    create_table :registries do |t|
      t.string :title
      t.string :description
      t.integer :total_cost

      t.timestamps null: false
    end
  end
end
