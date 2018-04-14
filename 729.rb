# 729. My Calendar I
# 108 / 108 test cases passed.
# Status: Accepted
# Runtime: 112 ms

class MyCalendar
    def initialize()
        @calander = Array.new
    end

    def bsearch(n, p)
        left = 0
        right = @calander.length - 1
        mid = (left + right) / 2
        while left <= right
            if @calander[mid][p] < n
                left = mid + 1
            elsif @calander[mid][p] > n
                right = mid - 1
            else
                return mid
            end
            mid = (left + right) / 2
        end
        return mid + 1
    end
    
    def search_event(from, to)
        return 0 if @calander.empty?
        pos = bsearch(from, 0)
        return nil if pos-1 >= 0 && @calander[pos-1][1] > from
        return nil if pos < @calander.length && @calander[pos][0] < to
        return pos
    end

=begin
    :type start: Integer
    :type end: Integer
    :rtype: Boolean
=end
    def book(from, to)
        pos = search_event(from, to)
        return false unless pos

        @calander.insert(pos, [from, to])
        return true
    end

end
