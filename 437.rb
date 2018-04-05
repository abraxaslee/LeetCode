# 437. Path Sum III
# 126 / 126 test cases passed.
# Status: Accepted
# Runtime: 228 ms
# @param {TreeNode} root
# @param {Integer} sum
# @return {Integer}
def traverse(node, accumulator)
  return if node == nil
  accumulator += node.val
  @result += 1 if @target == accumulator
  traverse(node.left, accumulator) if node.left
  traverse(node.right, accumulator) if node.right
end

# each node could be a starting point
def traverse_starter (node)
  return if node == nil
  traverse(node, 0)
  traverse_starter(node.left) if node.left
  traverse_starter(node.right) if node.right
end

def path_sum(root, sum)
    @result = 0
    @target = sum
    traverse_starter(root)
    return @result
end
