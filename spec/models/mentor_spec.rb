require "rails_helper"

RSpec.describe Mentor, :type => :model do
    it "has no mentors in the beginning" do
      expect(Mentor.count).to eq(0)
    end

    it "doesn't create a new mentor without a name" do
      should { validate_presence_of(:name) }
      expect{ Mentor.create! }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it "requires a name at the database level" do
      expect{ Mentor.new().save(validate: false) }.to raise_error(ActiveRecord::StatementInvalid)
    end

    it "creates a new mentor with a name" do
      expect{ Mentor.create!(name: "Kevin Burleigh") }.to change(Mentor, :count).by(1)
    end
end
