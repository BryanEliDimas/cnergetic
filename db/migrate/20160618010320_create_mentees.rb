class CreateMentees < ActiveRecord::Migration
  def change
    create_table :mentees do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
