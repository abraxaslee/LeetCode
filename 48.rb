# 48. Rotate Image
# 21 / 21 test cases passed.
# Status: Accepted
# Runtime: 40 ms
# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
    return [] if matrix.empty?
    # swap row
    vertical_half_index = matrix.length / 2
    for i in 0...vertical_half_index
      matrix[i], matrix[matrix.length - i - 1] = matrix[matrix.length - i - 1], matrix[i]
    end

    for i in 0...matrix.length
      for k in i...(matrix[i].length)
        matrix[i][k], matrix[k][i] = matrix[k][i], matrix[i][k]
      end
    end
    matrix.to_s
end
