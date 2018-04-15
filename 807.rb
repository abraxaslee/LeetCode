# 807. Max Increase to Keep City Skyline
# 133 / 133 test cases passed.
# Status: Accepted
# Runtime: 48 ms

# @param {Integer[][]} grid
# @return {Integer}
def max_increase_keeping_skyline(grid)
  row_max = Hash.new(0)
  col_max = Hash.new(0)

  for row in 0...grid.length
    for col in 0...grid[row].length
      row_max[row] = grid[row][col] if grid[row][col] > row_max[row]
      col_max[col] = grid[row][col] if grid[row][col] > col_max[col]
    end
  end

  result = 0

  for row in 0...grid.length
    for col in 0...grid[row].length
      limit = [row_max[row], col_max[col]].min
      result += (limit - grid[row][col]) if limit > grid[row][col]
    end
  end

  result
end


puts max_increase_keeping_skyline [[3,0,8,4],[2,4,5,7],[9,2,6,3],[0,3,1,0]]