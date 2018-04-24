# 328. Odd Even Linked List
# 70 / 70 test cases passed.
# Status: Accepted
# Runtime: 40 ms

# @param {ListNode} head
# @return {ListNode}
def odd_even_list(head)
  current = head
  return current unless head

  even = head.next

  is_odd = 0
  while current
    is_odd ^= 1
    break unless current.next
    orphan = current.next
    current.next = orphan.next

    last_current = current
    current = orphan
  end
  if is_odd == 1
    current.next = even
  else
    last_current.next = even
  end
  head
end
