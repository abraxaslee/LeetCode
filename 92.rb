# 92. Reverse Linked List II
# 44 / 44 test cases passed.
# Status: Accepted
# Runtime: 36 ms

# @param {ListNode} head
# @param {Integer} m
# @param {Integer} n
# @return {ListNode}
def reverse_between(head, m, n)
    return head if m == n
    stack = []
    level = 0
    mid = (m+n)/2.0
    current = head
    
    while current
        level += 1
        if level >= m && level < mid
            stack.push current
        elsif level > mid && level <= n
            target = stack.pop
            target.val, current.val = current.val, target.val
        elsif level > n
            return head
        end
        current = current.next
    end
    return head
end