class PlantsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.integer :difficulty
      t.string :light
      t.boolean :flowering
      t.boolean :succulent
      t.text :medicinal
      t.boolean :safe
      t.boolean :clean
      t.text :care
      t.boolean :propogation
      t.text :images
    end
  end
end
