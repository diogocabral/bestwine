class AddForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key :wines, :grapes, column: :grape_id
    add_foreign_key :wines, :contests, column: :contest_id
  end
end
