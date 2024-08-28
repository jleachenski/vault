class CreateTypes < ActiveRecord::Migration[7.2]
  def change
    create_table :types do |t|
      t.string :name
      t.float :height
      t.float :length
      t.float :width
      t.float :price_multiplier

      t.timestamps
    end
  end
end
