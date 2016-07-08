class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.integer :contest_id
      t.string :name
      t.float :vivino_score
      t.float :price
      t.string :invoice
      t.timestamps null: false
    end
  end
end
