class CreateUserparams < ActiveRecord::Migration[5.2]
  def change
    create_table :userparams do |t|
      t.string :firstname
      t.string :lastname
      t.string :age
      t.integer :user_id

      t.timestamps
    end
  end
end
