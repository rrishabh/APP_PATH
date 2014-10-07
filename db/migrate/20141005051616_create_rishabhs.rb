class CreateRishabhs < ActiveRecord::Migration
  def change
    create_table :rishabhs do |t|
      t.string :name
      t.string :designation
      t.integer :phone_no

      t.timestamps
    end
  end
end
