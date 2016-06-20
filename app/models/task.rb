class Task < ActiveRecord::Base
  validates_presence_of :name
  validates_numericality_of :consequence, allow_blank: true
  validates_inclusion_of :consequence, in: 1..10, allow_blank: true
  validates_datetime :due, on_or_after: DateTime.current, allow_blank: true
end
