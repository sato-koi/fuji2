class CreateTicket2s < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket2s do |t|
      t.string :name
      t.integer :price
      t.string :email
      t.boolean :tent

      t.timestamps
    end
  end
end
