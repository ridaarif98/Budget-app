class CreateMoneyTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :money_tracks do |t|
      t.string :name
      t.decimal :amount

      t.timestamps
    end
  end
end
