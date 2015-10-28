class AddImageToRegistries < ActiveRecord::Migration
  def change
    add_column :registries, :image, :string
  end
end
