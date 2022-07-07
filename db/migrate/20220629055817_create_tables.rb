class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author_id
      t.datetime :published

      t.timestamps
    end

    create_table :authors do |t|
      t.string :name
      t.timestamps
    end
  end
end
