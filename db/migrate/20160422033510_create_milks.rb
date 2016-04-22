class CreateMilks < ActiveRecord::Migration
  def self.up
    create_table :milks do |t|
      t.string :name
      t.string :short_description
      t.string :long_description
      t.decimal :price
      t.string :ingredients
      
      t.timestamps
    end
  end

  def self.down
    drop_table :milks
  end
end