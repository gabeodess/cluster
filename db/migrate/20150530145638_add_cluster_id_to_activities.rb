class AddClusterIdToActivities < ActiveRecord::Migration
  def change
    add_reference :activities, :cluster, index: true, foreign_key: true
  end
end
