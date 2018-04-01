# 146. LRU Cache
# 18 / 18 test cases passed.
# Status: Accepted
# Runtime: 96 ms
class LRUCache

=begin
    :type capacity: Integer
=end
    def initialize(capacity)
        @cache = Hash.new(-1)
        @capacity = capacity
    end


=begin
    :type key: Integer
    :rtype: Integer
=end
    def get(key)
        return -1 unless @cache.has_key? key
        value = @cache[key]
        @cache.delete key
        @cache[key] = value
        return value
    end

=begin
    :type key: Integer
    :type value: Integer
    :rtype: Void
=end
    def put(key, value)
        @cache.delete key if @cache.has_key? key
        @cache[key] = value
        
        while @cache.size > @capacity do 
            @cache.delete @cache.first.first
        end
        
        return
    end
end
