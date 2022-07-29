class CreateDuties < ActiveRecord::Migration[6.1]
  def change
    create_table :duties do |t|
      t.string :date
      t.boolean :adress
      t.text :description
      t.integer :payment

      t.timestamps
    end
  end
end
