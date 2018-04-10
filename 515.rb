# 515. Find Largest Value in Each Tree Row
# 78 / 78 test cases passed.
# Status: Accepted
# Runtime: 48 ms

def traverse(node, level, result)
  result[level] = node.val if level >= result.length || node.val > result[level]
  return if !node.left && !node.right
  traverse(node.left, level + 1, result) if node.left
  traverse(node.right, level + 1, result) if node.right
end

# @param {TreeNode} root
# @return {Integer[]}
def largest_values(root)
  result = []
  traverse(root, 0, result) if root
  result
end
