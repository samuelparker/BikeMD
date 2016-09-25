helpers do

  def list_tools(solution)
    tool_list = []
    solution.tools.each { |tool| tool_list << tool.name }
    tool_list.join(' ,')
  end
end