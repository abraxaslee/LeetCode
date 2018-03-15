/*
 * 566. Reshape the Matrix
 * 56 / 56 test cases passed.
 * Status: Accepted
 * Runtime: 11 ms
 */

public class Solution {
    public int[][] matrixReshape(int[][] nums, int r, int c) {
        if (nums.length == 0 || nums[0].length == 0 || ((nums.length*nums[0].length) != (r*c) ))
            return nums;
        int[][] result = new int[r][c];
        int nr = 0, nc = 0;
        for (int i = 0; i < nums.length; i++)
          for (int j = 0; j < nums[0].length; j++) {
                result[nr][nc] = nums[i][j];
                if (nc + 1 == c)
                  nr = (nr + 1) % r;
                nc = (nc + 1) % c;
          }

        return result;
    }
}