class AddDobAsDateToPeople < ActiveRecord::Migration
  def change
    change_column :people, :dob, :date
  end
end
