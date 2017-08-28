require 'rails_helper'

RSpec.describe "node page", :type => :request do
  it "displays the node according to the key in url" do
    node = Node.create!(:username => "Sam Sheehy")
    get "/node/#{node.key}"

    expect(page.status_code).to be(200)
  end
end
