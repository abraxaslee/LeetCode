# 814. Binary Tree Pruning
# 28 / 28 test cases passed.
# Status: Accepted
# Runtime: 36 ms

def traverse(node)
  node.left = nil if node.left && traverse(node.left)
  node.right = nil if node.right && traverse(node.right)
  return true if node.val == 0 && !node.left && !node.right
end

# @param {TreeNode} root
# @return {TreeNode}
def prune_tree(root)
    if root && root.val == 0 && !root.left && !root.right
      root = nil
    end
    traverse(root) if root
    root
end
