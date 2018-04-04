# 404. Sum of Left Leaves
# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

def traverse(node, is_left)
    @result += node.val if node.left == nil && node.right == nil && is_left == true
    traverse(node.left, true) if node.left != nil
    traverse(node.right, false) if node.right != nil
end

# @param {TreeNode} root
# @return {Integer}
def sum_of_left_leaves(root)
    @result = 0
    traverse(root, false) unless root == nil
    return @result
end
