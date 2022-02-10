// Definition for singly-linked list.
class ListNode {
  val: number;
  next: ListNode | null;
  constructor(val?: number, next?: ListNode | null) {
    this.val = val === undefined ? 0 : val;
    this.next = next === undefined ? null : next;
  }
}

function isPalindrome(head: ListNode | null): boolean {
  let stack: ListNode[] = [];
  let currentNode = head;
  while (currentNode !== null) {
    stack.unshift(currentNode);
    currentNode = currentNode.next;
  }

  currentNode = head;
  for (let i = 0; i < stack.length; i++) {
    if (stack[i].val !== currentNode.val) {
      return false;
    }
    currentNode = currentNode.next;
  }
  return true;
}
