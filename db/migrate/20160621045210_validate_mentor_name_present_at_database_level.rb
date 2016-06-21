class ValidateMentorNamePresentAtDatabaseLevel < ActiveRecord::Migration
  def change
    change_column_null :mentors, :name, false
  end
end
