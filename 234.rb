# 234. Palindrome Linked List
# 26 / 26 test cases passed.
# Status: Accepted
# Runtime: 56 ms

# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
    list = []
    current = head
    while current
        list << current.val
        current = current.next
    end
    mid = list.length / 2
    for i in 0...mid
        return false unless list[i] == list[list.length - i - 1]
    end
    return true
end
