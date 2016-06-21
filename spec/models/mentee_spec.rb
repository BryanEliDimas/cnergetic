require "rails_helper"

RSpec.describe Mentee, :type => :model do
    it "has no mentors in the beginning" do
      expect(Mentee.count).to eq(0)
    end

    it "doesn't create a new mentee without a name" do
      should { validate_presence_of(:name) }
      expect{ Mentee.create! }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it "requires a name at the database level" do
      expect{ Mentee.new().save(validate: false) }.to raise_error(ActiveRecord::StatementInvalid)
    end

    it "creates a new mentee with a name" do
      expect{ Mentee.create!(name: "Bryan Dimas") }.to change(Mentee, :count).by(1)
    end
end
