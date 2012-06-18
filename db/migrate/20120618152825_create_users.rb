class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :sex
      t.integer :age
      t.integer :occupation_id
      t.string :zip

      t.timestamps
    end
  end
end
