class DropGrapesForeignKeyFromWine < ActiveRecord::Migration
  def change
    remove_foreign_key :wines, column: :grape_id
  end
end
