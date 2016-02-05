class CreatePoints < ActiveRecord::Migration
    create_table :points do |t|
      t.integer :point_num
      t.integer :elevation
      t.string :datetime
      t.text :description
      t.integer :longitude
      t.integer :latitude

      t.timestamps
    end
end
