class NodesController < ApplicationController
  def index
    @key = params[:key]
    @node = Node.find_by_key @key
    @name = @node.name if @node
  end

  def create
  	name = params[:name]
  	@node = Node.create(name: name)
  	redirect_to "/nodes/#{@node.key}"
  end

  def create_child
  	name = params[:name]
  	@node = Node.new(name: name)
  	parent = Node.find_by_key params[:parent_key]
  	if parent
  		@node[:parent] = parent
  		@node.save
  		redirect_to "/nodes/#{@node.key}"
  	end
  	
  end
end
