class CreateFees < ActiveRecord::Migration[7.2]
  def change
    create_table :fees do |t|
      t.string :name
      t.float :price_per_hour

      t.timestamps
    end
  end
end
