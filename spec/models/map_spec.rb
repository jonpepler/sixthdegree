require 'rails_helper'

RSpec.describe Map, :type => :model do
  it "has a name field" do
    map = Map.create!(name: "Sam Sheehy")

    expect(map.name).to eq("Sam Sheehy")
  end

  it { should validate_presence_of :name }
  it { should validate_presence_of :key }
end
