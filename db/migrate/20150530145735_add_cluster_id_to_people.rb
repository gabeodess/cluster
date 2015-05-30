class AddClusterIdToPeople < ActiveRecord::Migration
  def change
    add_reference :people, :cluster, index: true, foreign_key: true
  end
end
