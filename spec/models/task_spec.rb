require 'rails_helper'

RSpec.describe Task, type: :model do
  it "can be created" do
    expect{ Task.create!(name: "Do my homework") }.to change(Task, :count).by(1)
  end

  it "creates a new task" do
    expect{ Task.create!(name: "Do my homework") }.to change(Task, :count).by(1)
  end

  it "raises ActiveRecord error when created without a name" do
    expect{ Task.create! }.to raise_error(ActiveRecord::StatementInvalid)
  end
end
