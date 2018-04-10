# 101. Symmetric Tree
# 193 / 193 test cases passed.
# Status: Accepted
# Runtime: 36 ms

# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
    return true unless root
    stack = []
    stack.push [root, 0]
    level_size = 1
    while !stack.empty?
      for i in 0...stack.length/2
          node_a, index_a = stack[i]
          node_b, index_b = stack[stack.length - i - 1]
          return false unless (index_a + index_b + 1) == level_size
          return false unless node_a.val == node_b.val
      end
      
      next_stack = []
      stack.each do |n|
          node, i = n
          next_stack << [node.left, i*2] if node.left
          next_stack << [node.right, i*2 +1] if node.right
      end
      return true if next_stack.empty?
      return false unless next_stack.length % 2 == 0
      stack = next_stack
      level_size *= 2
    end
end
