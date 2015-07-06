class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
    	t.string :firstname
    	t.string :adress
    	t.string :phone
    	t.string :specialty
      t.string :password
      t.timestamps null: false
    end
  end
end
