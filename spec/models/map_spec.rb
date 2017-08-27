require 'rails_helper'

RSpec.describe Map, :type => :model do
  it "has a name field" do
    map = Map.create!(name: "Sam Sheehy")

    expect(map.name).to eq("Sam Sheehy")
  end
end

RSpec.describe Map, :type => :model do
  it { should validate_presence_of :name }
end

RSpec.describe Map, :type => :model do
  it "creates a unique key on creation" do
    map = Map.create!(name: "Sam Sheehy")

    expect(map.key).to exist
  end
end
