class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.integer :user_id
      t.float :ordercount
      t.string :comment

      t.timestamps
    end
  end
end
