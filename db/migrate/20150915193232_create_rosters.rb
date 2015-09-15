class CreateRosters < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
      t.references :player, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
