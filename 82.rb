# 82. Remove Duplicates from Sorted List II
# 168 / 168 test cases passed.
# Status: Accepted
# Runtime: 44 ms

# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
    last_node = nil
    current = head
    while current && current.next
      next_node = current.next
      has_duplicate = next_node && next_node.val == current.val
      while next_node && next_node.val == current.val
        next_node = next_node.next
      end

      if has_duplicate
        if last_node
          last_node.next = next_node
        else
          head = next_node
        end
      else
        last_node = current
        current.next = next_node
      end
      current = next_node
    end
    
    head
end
