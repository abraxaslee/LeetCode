# 2. Add Two Numbers
# 162 ms
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} node
# @param {string} numberString
# @return {string}
def list_traversal (node, numberString) 
  return numberString if node.nil?
  numberString += node.val.to_s
  list_traversal(node.next, numberString)
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    numberString1 = list_traversal(l1, "")
    numberString2 = list_traversal(l2, "")

    z = numberString1.reverse.to_i + numberString2.reverse.to_i
    z = z.to_s.reverse.split('').map {|x| ListNode.new(x.to_i)}
    z.each_with_index {|x,i|  x.next = z[i+1] if i+1 < z.size }
    z.first
end

# z = 472
# z = z.to_s.reverse.split('').map {|x| ListNode.new(x.to_i)}

# z.each_with_index {|x,i| 
#   x.next = z[i+1]  if i+1 < z.size
# }

# p list_traversal(z.first, "")