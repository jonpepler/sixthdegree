class NodesController < ApplicationController
  def index
    key = params[:key]
    @node = Node.find_by_key key
    @name = @node.name if @node
  end
end
