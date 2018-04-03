# 733. Flood Fill
# 277 / 277 test cases passed.
# Status: Accepted
# Runtime: 56 ms
# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} new_color
# @return {Integer[][]}
# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} new_color
# @return {Integer[][]}
def flood_fill(image, sr, sc, new_color)
    @image = image
    @original_color = image[sr][sc]
    @new_color = new_color
    return image if @new_color == @original_color

    fill(sr, sc)
    return @image
end

def fill(r, c)
  return if r < 0 || c < 0 || r >= @image.size || c >= @image[0].size
  return unless @image[r][c] == @original_color
  @image[r][c] = @new_color
  fill(r - 1, c) # up
  fill(r, c + 1) # right
  fill(r + 1, c) # down
  fill(r, c - 1) # left
end