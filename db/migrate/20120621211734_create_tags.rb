class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :area
      t.string :epc
      t.string :timestamp
      t.integer :client_id

      t.timestamps
    end
  end
end
