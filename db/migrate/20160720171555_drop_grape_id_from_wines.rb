class DropGrapeIdFromWines < ActiveRecord::Migration
  def change
    remove_column :wines, :grape_id
  end
end
