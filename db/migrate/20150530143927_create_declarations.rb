class CreateDeclarations < ActiveRecord::Migration
  def change
    create_table :declarations do |t|
      t.belongs_to :person, index: true, foreign_key: true
      t.date :date

      t.timestamps null: false
    end
  end
end
