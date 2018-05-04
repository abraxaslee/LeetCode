# 103. Binary Tree Zigzag Level Order Traversal
# 33 / 33 test cases passed.
# Status: Accepted
# Runtime: 36 ms

# @param {TreeNode} root
# @return {Integer[][]}
def zigzag_level_order(root)
    result = []
    stack = []

    stack << root if root && root.val
    is_reverse = false

    while !stack.empty?
      level = []
      next_stack = []
      stack.each do |node|
        level << node.val
        next_stack << node.left if node.left
        next_stack << node.right if node.right
      end
          
      result << (is_reverse ? level.reverse : level)
      is_reverse = !is_reverse
      stack = next_stack
    end

    return result    
end
