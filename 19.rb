# 19. Remove Nth Node From End of List
# 79 ms
# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

def list_traversal(node, nodeArray)
  return nodeArray if node.nil?
  nodeArray.push(node)
  list_traversal(node.next, nodeArray)
end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
    nodeArray = list_traversal head, []
    return if nodeArray.size == 1 
    return nodeArray[1] if nodeArray.size == n
    pos = nodeArray.size - n
    nodeArray[pos-1].next = nodeArray[pos+1]
    return head
end
01234

z = (1..5).to_a.map {|x| ListNode.new(x)}
z.each_with_index {|x,i|  x.next = z[i+1] if i+1 < z.size }
x = list_traversal z.first, []
# x.each {|x| p x.val }

c = [1,2,3,4,5]
p c[6]