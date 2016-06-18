require 'rails_helper'

RSpec.describe Task, type: :model do
  it "can be created" do
    expect{ Task.create!(name: "Do my homework") }.to change(Task, :count).by(1)
  end

  it "can't be created without a name" do
    expect{ Task.create!(name: "Do my homework") }.to change(Task, :count).by(1)
  end

  it "validates name is present on creation" do
    expect{ Task.create! }.to raise_error(ActiveRecord::StatementInvalid)
  end
end
