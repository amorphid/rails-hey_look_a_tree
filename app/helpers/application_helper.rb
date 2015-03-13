module ApplicationHelper
  def render_nodes(nodes)
    arr = []

    arr << "<ul>"

    nodes.each do |node|
      arr << "<li>"
      arr << node.description
      arr << render_nodes(node.nodes)
      arr << "</li>"
    end

    arr << "</ul>"

    arr.join.html_safe
  end
end

