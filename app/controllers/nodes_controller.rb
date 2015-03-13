class NodesController < ApplicationController
  def index
    @nodes = Node.where(node_id: nil)
  end
end
