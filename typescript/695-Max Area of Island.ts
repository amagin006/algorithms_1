function maxAreaOfIsland(grid: number[][]): number {
  let maxAreaNum: number = 0;
  let row = grid.length;
  let column = grid[0].length;

  for (let i = 0; i < row; i++) {
    for (let k = 0; k < column; k++) {
      // found islnad
      if (grid[i][k] === 1) {
        const islandNum = dfs(grid, i, k);
        maxAreaNum = Math.max(islandNum, maxAreaNum);
      }
    }
  }
  return maxAreaNum;
}

function dfs(grid: number[][], x: number, y: number): number {
  if (
    x < 0 ||
    y < 0 ||
    x >= grid.length ||
    y >= grid[x].length ||
    grid[x][y] === 0
  ) {
    return 0;
  }

  let count: number = 1;
  grid[x][y] = 0;

  count += dfs(grid, x, y + 1); // right
  count += dfs(grid, x, y - 1); // left
  count += dfs(grid, x + 1, y); // top
  count += dfs(grid, x - 1, y); // bottom

  return count;
}
