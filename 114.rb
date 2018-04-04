# 114. Flatten Binary Tree to Linked List
# 225 / 225 test cases passed.
# Status: Accepted
# Runtime: 44 ms
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Void} Do not return anything, modify root in-place instead.
def flatten(root)
    return if root == nil
    if root.left
        if root.right
            node = root.left
            while node.right || node.left
              node = node.right ? node.right : node.left
            end

            node.right, root.right, root.left = root.right, root.left, nil
        else
            root.right, root.left = root.left, nil
        end
    end
    flatten(root.right)
end
