require "rails_helper"

RSpec.describe Mentor do
  it "creates a new mentor object" do
    mentor = Mentor.new
    expect(mentor).to exist
  end
end