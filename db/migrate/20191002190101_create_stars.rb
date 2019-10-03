class CreateStars < ActiveRecord::Migration[5.2]
  def change
    create_table :stars do |t|
      t.string :name
      t.text :desription

      t.timestamps
    end
  end
end
