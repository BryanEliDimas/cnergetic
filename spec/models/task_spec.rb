require 'rails_helper'

RSpec.describe Task, type: :model do
  it "requireds a name" do
    should validate_presence_of :name
  end

  it "can be created with a name" do
    expect{ Task.create!(name: "Do my homework") }.to change(Task, :count).by(1)
  end

  it "requires a name at the dabase level" do
    expect{ Task.new().save(validate: false) }.to raise_error(ActiveRecord::StatementInvalid)
  end

  it "can have a consequence" do
    expect{ Task.create!(name: "Do my homework", consequence: 1) }
  end

  it "validates for consequence within range 1 to 10" do
    should validate_numericality_of(:consequence)
    should validate_inclusion_of(:consequence).in_range(1..10)
  end

  it "can have an estimated length" do
    expect{ Task.create!(name: "Do my homework", estimated_length: 15.minutes.from_now) }.to change(Task, :count).by(1)
  end

  it "can have a due date" do
    expect{ Task.create!(name: "Do my homework", due: 15.minutes.from_now) }.to change(Task, :count).by(1)
  end

  it "validates due date is in the future" do
    expect{ Task.create!(name: "Do my homework", due: 15.minutes.ago) }.to raise_error(ActiveRecord::RecordInvalid)
  end
end
