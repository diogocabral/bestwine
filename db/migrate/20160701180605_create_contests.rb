class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :name
      t.timestamp :starts_in
      t.timestamps null: false
    end
  end
end
