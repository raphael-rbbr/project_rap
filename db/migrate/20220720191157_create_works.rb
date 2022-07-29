class CreateWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :works do |t|
      t.references :work, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
