class CreateSeekerDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :seeker_details do |t|
      t.references :seeker, null: false, foreign_key: true
      t.string :first_name
      t.string :second_name
      t.string :third_name
      t.integer :phone_number
      t.date :dob
      t.string :gender
      t.string :nationality
      t.string :country

      t.timestamps
    end
  end
end
