require "rails_helper"

RSpec.describe Mentor, :type => :model do
    it "has no mentors in the beginning" do
      expect(Mentor.count).to eq(0)
    end

    it "creates a new mentor" do
      mentor = Mentor.create!
      expect(Mentor.count).to eq(1)
    end
end
