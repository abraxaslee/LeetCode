# 695. Max Area of Island
# 726 / 726 test cases passed.
# Status: Accepted
# Runtime: 84 ms

@d = [
  [-1, 0],
  [0, 1],
  [1, 0],
  [0, -1]
].freeze

def DFS (grid, y, x)
  count = 0
  stack = []
  stack.push [y, x]
  while !stack.empty? do
    y, x = stack.pop

    if grid[y][x] == 1
      count += 1 
      grid[y][x] = 0

      @d.each_with_index do |d|
        ny = y + d[0]
        nx = x + d[1]

        if 0 <= ny && ny < grid.length 
          if 0 <= nx && nx < grid[ny].length
            if grid[ny][nx] == 1
              stack.push [ny, nx]
            end
          end
        end
      end
    end
  end

  count
end

# @param {Integer[][]} grid
# @return {Integer}
def max_area_of_island(grid)
    result = 0

    grid.each_with_index do |grid_y, y|
      grid_y.each_with_index do |grid_x, x|
        if grid_x == 1
          count = DFS(grid, y, x)
          result = [result, count].max
        end
      end
    end
    return result
end
