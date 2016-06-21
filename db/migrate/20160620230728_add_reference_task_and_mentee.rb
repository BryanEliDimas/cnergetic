class AddReferenceTaskAndMentee < ActiveRecord::Migration
  def change
    add_reference :tasks, :mentee, index: true
  end
end
