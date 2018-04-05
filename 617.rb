# 617. Merge Two Binary Trees
# 183 / 183 test cases passed.
# Status: Accepted
# Runtime: 88 ms

# @param {TreeNode} t1
# @param {TreeNode} t2
# @return {TreeNode}
def merge_trees(t1, t2)
    return nil if t1 == nil && t2 == nil
    merge_val = (t1 ? t1.val : 0) + (t2 ? t2.val : 0)
    node = TreeNode.new(merge_val)
    node.left = merge_trees(t1 ? t1.left : nil, t2 ? t2.left : nil)
    node.right = merge_trees(t1 ? t1.right : nil, t2 ? t2.right : nil)
    return node
end
