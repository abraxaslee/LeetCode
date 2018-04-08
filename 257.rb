# 257. Binary Tree Paths
# 209 / 209 test cases passed.
# Status: Accepted
# Runtime: 36 ms

def traverse(node, track, result)
  track += "#{node.val}->"
  return (result << track) if !node.left && !node.right
  traverse(node.left, track, result) if node.left
  traverse(node.right, track, result) if node.right
end

# @param {TreeNode} root
# @return {String[]}
def binary_tree_paths(root)
    result = []
    traverse(root, '', result) if root
    result.map {|n| n.chomp('->')}
end