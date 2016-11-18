class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :user_id, null: false
      t.integer :item_id, null: false
      t.integer :amount, null: false
      t.timestamps null: false
    end
    add_index :bids, :user_id
    add_index :bids, :item_id
  end
end
