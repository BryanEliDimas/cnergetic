require 'rails_helper'

RSpec.describe Task, type: :model do
  it { should validate_presence_of :name }

  it "can be created" do
    expect{ Task.create!(name: "Do my homework") }.to change(Task, :count).by(1)
  end

  it "requires a name at the dabase level" do
    expect{ Task.new().save(validate: false) }.to raise_error(ActiveRecord::StatementInvalid)
  end

end
