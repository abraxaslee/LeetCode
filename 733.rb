# 733. Flood Fill
# 277 / 277 test cases passed.
# Status: Accepted
# Runtime: 80 ms
# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} new_color
# @return {Integer[][]}
def flood_fill(image, sr, sc, new_color)
    original_color = image[sr][sc]
    return image if new_color == original_color
    stack = [[sr, sc]]

    dr = [-1, 0, 1, 0]
    dc = [0, 1, 0, -1]

    while !stack.empty?
      r, c = stack.pop
      image[r][c] = new_color

      for d in 0..3
        nr, nc = r + dr[d], c + dc[d]
        if 0 <= nr && nr < image.length && 0 <= nc && nc < image[nr].length
          if image[nr][nc] == original_color
            stack.push [nr, nc]
          end
        end
      end
    end
    image.to_s
end

# puts flood_fill([[1,1,1],[1,1,0],[1,0,1]],1,1,255)
puts flood_fill([[0,0,0],[0,1,1]],1,1,1)