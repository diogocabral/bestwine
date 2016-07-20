class CreateWinesGrapesForeignKyes < ActiveRecord::Migration
  def change
    add_foreign_key :wines_grapes, :grapes, column: :grape_id
    add_foreign_key :wines_grapes, :wines, column: :wine_id
  end
end
