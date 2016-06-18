require "rails_helper"

RSpec.describe Mentor, :type => :model do
    it "has no mentors in the beginning" do
      expect(Mentor.count).to eq(0)
    end

    it "doesn't create a new mentor" do
      subject { Mentor.create! }
      expect(Mentor.count).to eq(0)
    end

    it { is_expected.to validate_presence_of(:name) }

    it "creates a new mentor" do
      expect{ Mentor.create!(name: "Kevin Burleigh") }.to change(Mentor, :count).by(1)
    end
end
