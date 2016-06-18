require "rails_helper"

RSpec.describe Mentee, :type => :model do
    it "has no mentors in the beginning" do
      expect(Mentee.count).to eq(0)
    end

    it "creates a new mentor" do
      expect{ Mentee.create! }.to change(Mentee, :count).by(1)
    end

    it { is_expected.to validate_presence_of(:name) }
end
