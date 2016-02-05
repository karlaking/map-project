class CreatePoints < ActiveRecord::Migration
    create_table :points do |t|
      t.integer :id
      t.integer :elevation
      t.string :datetime
      t.string :description
      t.integer :longitude
      t.integer :latitude
    end
end
