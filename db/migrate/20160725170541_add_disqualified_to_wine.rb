class AddDisqualifiedToWine < ActiveRecord::Migration
  def change
    add_column :wines, :disqualified, :boolean
    add_column :wines, :comments, :string

    Wine.connection.execute("UPDATE wines SET disqualified = false")
  end
end
