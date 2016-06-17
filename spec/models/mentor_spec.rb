require "rails_helper"

RSpec.describe Mentor, :type => :model do
    it "has no mentors in the beginning" do
      expect(Mentor.count).to eq(0)
    end

    it "creates a new mentor" do
      expect{ Mentor.create! }.to change(Mentor, :count).by(1)
    end
end
