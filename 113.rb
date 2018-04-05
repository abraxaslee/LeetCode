# 113. Path Sum II
# 114 / 114 test cases passed.
# Status: Accepted
# Runtime: 52 ms
# @param {TreeNode} root
# @param {Integer} sum
# @return {Integer}
def traverse(node, accumulator, path)
  return if node == nil
  path = path.dup
  accumulator += node.val
  path.push node.val
  if node.left == nil && node.right == nil
    @result.push path if @target == accumulator
    return
  end
  if node.left
    traverse(node.left, accumulator)
  end
  if node.right
    traverse(node.right, accumulator) 
  end
end

def path_sum(root, sum)
    @result = []
    @target = sum
    traverse(root, 0, [])
    return @result
end
