require 'rails_helper'

RSpec.describe Task, type: :model do
  it { should validate_presence_of :name }

  it "can be created with a name" do
    expect{ Task.create!(name: "Do my homework") }.to change(Task, :count).by(1)
  end

  it "requires a name at the dabase level" do
    expect{ Task.new().save(validate: false) }.to raise_error(ActiveRecord::StatementInvalid)
  end

  it "can have a consequence" do
    expect{ Task.create!(name: "Do my homework", consequence: 1) }
  end

  it "validates for consequence within range 1 to 10"

  it "can have an estimated length"

  it "validates estimated length is a positive value"

  it "can have a due date"

  it "validates due date is in the future"
end
