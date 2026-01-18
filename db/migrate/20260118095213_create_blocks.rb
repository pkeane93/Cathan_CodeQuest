class CreateBlocks < ActiveRecord::Migration[7.1]
  def change
    create_table :blocks do |t|
      t.integer :position
      t.string :blocktitle
      t.text :blocktext
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
