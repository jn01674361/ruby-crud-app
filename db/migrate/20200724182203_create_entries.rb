class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.string :name
      t.string :score
      t.string :date

      t.timestamps
    end
  end
end
