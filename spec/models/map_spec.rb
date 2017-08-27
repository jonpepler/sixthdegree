require 'rails_helper'

RSpec.describe Map, :type => :model do
  it "has a name field" do
    map = Map.create!(name: "Sam Sheehy")

    expect(map.name).to eq("Sam Sheehy")
  end

  it "generates a key on creation" do
    map = Map.create!(name: "SS", key: nil)

    expect(map.key.nil?).to be_falsey
  end

  it { should validate_presence_of :name }
end
