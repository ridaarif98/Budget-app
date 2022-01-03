class CreateMoneyGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :money_groups do |t|

      t.timestamps
    end
  end
end
