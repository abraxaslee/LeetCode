# 83. Remove Duplicates from Sorted List
# 165 / 165 test cases passed.
# Status: Accepted
# Runtime: 44 ms

# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
    current_node = head
    while current_node
      break unless current_node.next
      upcoming = current_node.next
      while upcoming.val == current_node.val && upcoming.next
        upcoming = upcoming.next
      end

      unless upcoming.val == current_node.val
        current_node.next = upcoming
        current_node = upcoming
      else
        current_node.next = nil
        current_node = nil
      end
    end
    head
end
