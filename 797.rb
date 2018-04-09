# 797. All Paths From Source to Target
# 26 / 26 test cases passed.
# Status: Accepted
# Runtime: 120 ms

# @param {Integer[][]} graph
# @return {Integer[][]}
def all_paths_source_target(graph)
  result = []
  stack = []
  graph[0].each {|t| stack.push [t, [0]]}
  while !stack.empty?
    target, path = stack.shift
    path << target
    if graph[target].empty?
      result << path
      next
    else
      graph[target].each {|t| stack.push [t, path.dup]}
    end
  end
  result
end
