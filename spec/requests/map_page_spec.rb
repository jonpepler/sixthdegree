require 'rails_helper'

RSpec.describe "map page", :type => :request do
  it "displays the map according to the key in url" do
    map = Map.create!(:username => "Sam Sheehy")
    get "/map/#{map.key}"

    expect(page.status_code).to be(200)
  end
end
