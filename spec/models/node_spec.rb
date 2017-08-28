require 'rails_helper'

RSpec.describe Node, :type => :model do
  it "has a name field" do
    node = Node.create!(name: "Sam Sheehy")

    expect(node.name).to eq("Sam Sheehy")
  end

  it "generates a key on creation" do
    node = Node.create!(name: "SS", key: nil)

    expect(node.key.nil?).to be_falsey
  end

  it { should validate_presence_of :name }
end
