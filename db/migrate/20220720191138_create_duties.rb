class CreateDuties < ActiveRecord::Migration[6.1]
  def change
    create_table :duties do |t|

      t.timestamps
    end
  end
end
