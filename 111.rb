# 111. Minimum Depth of Binary Tree
# 41 / 41 test cases passed.
# Status: Accepted
# Runtime: 40 ms

def traverse(node, depth)
  @result = depth if node.left == nil && node.right == nil && depth < @result
  traverse(node.left, depth + 1) if node.left
  traverse(node.right, depth + 1) if node.right
end

# @param {TreeNode} root
# @return {Integer}
def min_depth(root)
    if root
        @result = 2 ** 31
        traverse(root, 1)
        return @result
    else
        return 0
    end
end
