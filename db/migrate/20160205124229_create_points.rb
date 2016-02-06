class CreatePoints < ActiveRecord::Migration
    create_table :points do |t|
      t.integer :point_num
      t.integer :elevation
      t.string :datetime
      t.text :description
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
end
