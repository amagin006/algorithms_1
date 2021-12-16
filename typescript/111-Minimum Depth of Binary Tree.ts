/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     val: number
 *     left: TreeNode | null
 *     right: TreeNode | null
 *     constructor(val?: number, left?: TreeNode | null, right?: TreeNode | null) {
 *         this.val = (val===undefined ? 0 : val)
 *         this.left = (left===undefined ? null : left)
 *         this.right = (right===undefined ? null : right)
 *     }
 * }
 */

class TreeNode {
  val: number;
  left: TreeNode | null;
  right: TreeNode | null;
  constructor(val?: number, left?: TreeNode | null, right?: TreeNode | null) {
    this.val = val === undefined ? 0 : val;
    this.left = left === undefined ? null : left;
    this.right = right === undefined ? null : right;
  }
}

function minDepth(root: TreeNode | null): number {
  if (root === null) return 0;
  if (root.left === null && root.right === null) return 1;

  let minDepth = 1;
  let queue: { node: TreeNode; depth: number }[] = [{ node: root, depth: 1 }];

  while (queue.length > 0) {
    const queueObj = queue[0];
    const queueNode = queueObj.node;
    if (queueNode.left === null && queueNode.right === null) {
      queue = [];
      minDepth = queueObj.depth;
      return minDepth;
    }

    const depth = queueObj.depth + 1;
    if (queueNode.left !== null) {
      queue.push({ node: queueNode.left, depth: depth });
    }
    if (queueNode.right !== null) {
      queue.push({ node: queueNode.right, depth: depth });
    }
    queue.shift();
  }

  return minDepth;
}
