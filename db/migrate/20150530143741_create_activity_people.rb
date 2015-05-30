class CreateActivityPeople < ActiveRecord::Migration
  def change
    create_table :activity_people do |t|
      t.belongs_to :activity, index: true, foreign_key: true
      t.belongs_to :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
