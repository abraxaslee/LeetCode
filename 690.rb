# 690. Employee Importance
# 108 / 108 test cases passed.
# Status: Accepted
# Runtime: 148 ms

# Employee info
class Employee
    attr_accessor :id, :importance, :subordinates
    def initialize( id, importance, subordinates)
        # It's the unique id of each node.
        # unique id of this employee
        @id = id
        # the importance value of this employee
        @importance = importance
        # the id of direct subordinates
        @subordinates = subordinates
    end
end

def DFS(cache, employee)
    stack = []
    result = 0
    
    stack.push employee.id
    while stack.length > 0
        e = cache[stack.pop]
        puts e
        result += e.importance
        stack.concat e.subordinates
    end
    result
end

# @param {Employee} employees
# @param {Integer} id
# @return {Integer}
def get_importance(employees, id)
    cache = Hash.new(0)
    employees.each do |e|
        cache[e.id] = e
    end
    return DFS(cache, cache[id])
end
