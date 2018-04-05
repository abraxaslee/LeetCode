# 104. Maximum Depth of Binary Tree
# 39 / 39 test cases passed.
# Status: Accepted
# Runtime: 40 ms

def traverse(node, depth)
  @result = depth if depth > @result
  traverse(node.left, depth + 1) if node.left
  traverse(node.right, depth + 1) if node.right
end

# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
    @result = 0
    traverse(root, 1) unless root == nil
    return @result
end