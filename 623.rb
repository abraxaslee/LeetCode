# 623. Add One Row to Tree
# 109 / 109 test cases passed.
# Status: Accepted
# Runtime: 48 ms

# @param {TreeNode} root
# @param {Integer} v
# @param {Integer} d
# @return {TreeNode}
def add_one_row(root, v, d)
    if d == 1
      new_root = TreeNode.new(v)
      new_root.left = root
      return new_root
    end
    result = []
    stack = []

    stack << root if root && root.val
    depth = 1

    while !stack.empty?
      level = []
      next_stack = []
      unless (d - 1) == depth
        stack.each do |node|
          level << node.val
          next_stack << node.left if node.left
          next_stack << node.right if node.right
        end
        
        depth += 1
        result << level
        stack = next_stack
      else
        stack.each do |node|
          next if node.val == nil
          left, right = node.left, node.right
          new_left, new_right = TreeNode.new(v), TreeNode.new(v)
          node.left, node.right = new_left, new_right

          new_left.left = left if left
          new_right.right = right if right
        end
        break
      end
    end

    return root
end

require './utils'
require 'timeout'
Timeout::timeout(5) { 
  input = build_tree([4,2,nil,3,1])
  # puts input
  result = add_one_row(input[0],1,4)
  print_tree input[0]
}