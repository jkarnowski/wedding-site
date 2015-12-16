class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :name
      t.string :email
      t.string :rsvp_response
      t.integer :number_of_guests

      t.timestamps null: false
    end
  end
end
