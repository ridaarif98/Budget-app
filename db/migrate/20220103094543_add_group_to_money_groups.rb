class AddGroupToMoneyGroups < ActiveRecord::Migration[6.1]
  def change
    add_reference :money_groups, :group, null: false, foreign_key: true
  end
end
