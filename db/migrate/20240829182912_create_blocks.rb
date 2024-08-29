class CreateBlocks < ActiveRecord::Migration[7.2]
  def change
    create_table :blocks do |t|
      t.string :zip_code
      t.string :neighborhood
      t.string :street
      t.integer :number
      t.string :additional_information
      t.float :latitude
      t.float :longitude
      t.references :fee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
