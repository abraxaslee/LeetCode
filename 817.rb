# 817. Linked List Components
# 57 / 57 test cases passed.
# Status: Accepted
# Runtime: 68 ms

require 'set'

# @param {ListNode} head
# @param {Integer[]} g
# @return {Integer}
def num_components(head, g)
    targets = Set.new(g)
    
    counter = 0
    result = 0
    
    cur = head
    
    while cur != nil
        if targets.include? cur.val
            counter += 1
        else
            result += 1 if counter > 0
            counter = 0
        end
        cur = cur.next
    end
    result += 1 if counter > 0
    return result
end