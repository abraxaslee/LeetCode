/**
 * 141. Linked List Cycle
 * 16 / 16 test cases passed.
 * Status: Accepted
 * Runtime: 1 ms
 */

/**
 * Definition for singly-linked list.
 * class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode(int x) {
 *         val = x;
 *         next = null;
 *     }
 * }
 */
public class Solution {
    public boolean hasCycle(ListNode head) {
        if (head == null || head.next == null)
        return false;
        ListNode fast = head;
        ListNode slow = head;
        while (fast.next != null && fast.next.next != null && slow.next != null) {
          fast = fast.next.next;
          slow = slow.next;
          if (fast == slow)
            return true;
        }
        return false;
    }
}