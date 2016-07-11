class AddForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key :wines, :grapes, column: :grape_id
    add_foreign_key :wines, :contests, column: :contest_id
    add_foreign_key :wines, :users, column: :user_id
  end
end
