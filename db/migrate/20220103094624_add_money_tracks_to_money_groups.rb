class AddMoneyTracksToMoneyGroups < ActiveRecord::Migration[6.1]
  def change
    add_reference :money_groups, :money_track, null: false, foreign_key: true
  end
end
