class AddReferenceTaskAndMentorId < ActiveRecord::Migration
  def change
    add_reference :tasks, :mentor, index: true
  end
end
