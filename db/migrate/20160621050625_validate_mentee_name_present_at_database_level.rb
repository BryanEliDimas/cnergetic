class ValidateMenteeNamePresentAtDatabaseLevel < ActiveRecord::Migration
  def change
    change_column_null :mentees, :name, false
  end
end
