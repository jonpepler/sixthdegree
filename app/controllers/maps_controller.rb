class MapsController < ApplicationController
  def index
    key = params[:key]
    @map = Map.find_by_key key
    @name = @map.name if @map
  end
end
