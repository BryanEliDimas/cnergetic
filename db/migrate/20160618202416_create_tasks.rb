class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.integer :consequence
      t.time :estimated_length
      t.datetime :due

      t.timestamps null: false
    end
  end
end
