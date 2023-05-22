class CreateSeekerDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :seeker_details do |t|
      t.references :seeker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
