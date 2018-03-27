# 21. Merge Two Sorted Lists
# 208 / 208 test cases passed.
# Status: Accepted
# Runtime: 44 ms
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
  return [] if l1 == nil && l2 == nil

  current = l1
  opposite = l2
    
  # swap to make sure current be a smaller number
  if current != nil && opposite != nil && l1.val > l2.val
      current, opposite = opposite, current
  end

  # always compare current next vs another list's orphan head
  while current != nil do
    if current.next != nil && opposite != nil && current.next.val > opposite.val
      current.next, opposite = opposite, current.next
    end
    result.push current.val
    current = current.next
  end
  while opposite != nil do
      result.push opposite.val
      opposite = opposite.next
  end
  result
end
