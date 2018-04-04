# 129. Sum Root to Leaf Numbers
# 109 / 109 test cases passed.
# Status: Accepted
# Runtime: 40 ms
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

def traverse(node, path, path_sum)
  path = path * 10 + node.val
  return (path_sum.push path) if node.left == nil && node.right == nil
  traverse(node.left, path, path_sum) if node.left != nil
  traverse(node.right, path, path_sum) if node.right != nil
end

# @param {TreeNode} root
# @return {Integer}
def sum_numbers(root)
    path_sum = []
    traverse(root, 0, path_sum) if root != nil
    return path_sum.reduce(0, &:+)
end