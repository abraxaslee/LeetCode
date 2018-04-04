# 112. Path Sum
# 114 / 114 test cases passed.
# Status: Accepted
# Runtime: 44 ms
# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

def traverse(node, accumulator)
  return if @result == true
  accumulator += node.val
  return (@result = true) if accumulator == @target && node.left == nil && node.right == nil
  traverse(node.left, accumulator) if node.left != nil
  traverse(node.right, accumulator) if node.right != nil
end

# @param {TreeNode} root
# @param {Integer} sum
# @return {Boolean}
def has_path_sum(root, sum)
    return false if root == nil
    @result = false
    @target = sum
    traverse(root, sum)
    return @result
end

a = [-2, nil, -3].map { |n| TreeNode.new(n)}
a[0].right = a[2]

puts has_path_sum(a[0], -5)