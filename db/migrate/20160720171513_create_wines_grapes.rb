class CreateWinesGrapes < ActiveRecord::Migration
  def change
    create_table :wines_grapes do |t|
      t.integer :wine_id
      t.integer :grape_id
      t.timestamps null: false
    end
  end
end
