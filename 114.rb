# 114. Flatten Binary Tree to Linked List
# 225 / 225 test cases passed.
# Status: Accepted
# Runtime: 72 ms
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

def traverse(node)
    @tree.push node
    traverse(node.left) unless node.left == nil
    traverse(node.right) unless node.right == nil
end

# @param {TreeNode} root
# @return {Void} Do not return anything, modify root in-place instead.
def flatten(root)
    @tree = []
    traverse(root) unless root == nil
    @tree.each_with_index do |node, i|
        node.left = nil
        node.right = i < @tree.length ? @tree[i+1] : nil
    end
end
