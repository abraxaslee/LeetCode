# 102. Binary Tree Level Order Traversal
# 34 / 34 test cases passed.
# Status: Accepted
# Runtime: 40 ms

# @param {TreeNode} root
# @return {Integer[][]}
def level_order(root)
    result = []
    stack = []

    stack << root if root && root.val

    while !stack.empty?
      level = []
      next_stack = []
      stack.each do |node|
        level << node.val
        next_stack << node.left if node.left
        next_stack << node.right if node.right
      end
      result << level
      stack = next_stack
    end

    return result
end
