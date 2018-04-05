# 811. Subdomain Visit Count
# 52 / 52 test cases passed.
# Status: Accepted
# Runtime: 76 ms

# @param {String[]} cpdomains
# @return {String[]}
def subdomain_visits(cpdomains)
    counter = Hash.new(0)
    cpdomains.each do |cp|
        count, domain = cp.split(' ')
        count = count.to_i
        domain = domain.split('.').reverse
        for i in 1...domain.length
            domain[i] = "#{domain[i]}.#{domain[i-1]}"
        end
        domain.each do |d|
            counter[d] += count
        end
    end
    counter.to_a.map {|cp| "#{cp[1]} #{cp[0]}"}
end
