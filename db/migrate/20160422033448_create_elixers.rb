class CreateElixers < ActiveRecord::Migration
  def self.up
    create_table :elixers do |t|
      t.string :name
      t.string :short_description
      t.string :long_description
      t.decimal :price
      t.string :ingredients
      
      t.timestamps
    end
  end

  def self.down
    drop_table :elixers
  end
end