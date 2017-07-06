class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :title
      t.text :description
      t.integer :starting_point
      t.integer :ending_point
      t.references :user, index: true

      t.timestamps
    end

    add_foreign_key :trips, :users, column: :user_id
  end
end
