# 766. Toeplitz Matrix
# 482 / 482 test cases passed.
# Status: Accepted
# Runtime: 48 ms

def is_diagonal_identical(matrix, src_y, src_x)
  target = matrix[src_y][src_x]
  src_y, src_x = src_y + 1, src_x + 1
  while src_y >= 0 && src_y < matrix.length && src_x >= 0 && src_x < matrix[src_y].length
    return false unless target == matrix[src_y][src_x]
    src_y, src_x = src_y + 1, src_x + 1
  end
  return true
end

# @param {Integer[][]} matrix
# @return {Boolean}
def is_toeplitz_matrix(matrix)
    for x in 0...matrix[0].length
      return false unless is_diagonal_identical(matrix, 0, x)
    end

    for y in 1...matrix.length
      return false unless is_diagonal_identical(matrix, y, 0)
    end

    return true
end