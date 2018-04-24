# 206. Reverse Linked List
# 27 / 27 test cases passed.
# Status: Accepted
# Runtime: 36 ms

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
    list = []
    current = head
    while current
        list << current
        current = current.next
    end
    
    mid = list.length/2
    for i in 0...mid
        target = list.length-i-1
        list[i].val, list[target].val = list[target].val, list[i].val
    end
    return head
end