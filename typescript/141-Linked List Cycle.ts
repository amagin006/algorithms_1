/**
 * Definition for singly-linked list.
 */

class ListNode {
  val: number;
  next: ListNode | null;
  constructor(val?: number, next?: ListNode | null) {
    this.val = val === undefined ? 0 : val;
    this.next = next === undefined ? null : next;
  }
}

function hasCycle(head: ListNode | null): boolean {
  let fast = head;
  let slow = head;

  while (fast) {
    if (!fast.next) return false;
    fast = fast.next.next;
    slow = slow.next;
    if (fast === slow) return true;
  }
  return false;
}

// time complexty: O(n)
// space compelxty: O(1)
