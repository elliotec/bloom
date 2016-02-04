class CreateCleanses < ActiveRecord::Migration
  def change
    create_table :cleanses do |t|
      t.string :name
      t.string :short_description
      t.string :long_description
      t.decimal :price
      t.string :ingredients

      t.timestamps null: false
    end
  end
end
