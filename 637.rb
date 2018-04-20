# 637. Average of Levels in Binary Tree
# 65 / 65 test cases passed.
# Status: Accepted
# Runtime: 48 ms

# @param {TreeNode} root
# @return {Float[]}
def average_of_levels(root)
    value_by_levels = []
    current_level = []
    next_level = []
    
    current_level << root if root
    while !current_level.empty?
        value_by_levels << []
        current_level.each do |node|
            value_by_levels[-1] << node.val
            next_level << node.left if node.left
            next_level << node.right if node.right
        end
        current_level = next_level
        next_level = []
    end
    
    value_by_levels.map {|vals| vals.reduce(&:+) / vals.length.to_f}
end
