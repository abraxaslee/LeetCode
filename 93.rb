# 93. Restore IP Addresses
# 147 / 147 test cases passed.
# Status: Accepted
# Runtime: 84 ms

def dfs(result, level, ip_string, remaining_ip_string)
  if level == 4
    result.push ip_string if remaining_ip_string.empty?
    return
  end

  for i in 0..2
    break if i + 1 > remaining_ip_string.length
    ip_section = remaining_ip_string[0..i].to_i
    next unless ip_section.to_s == remaining_ip_string[0..i]
    next if ip_section < 0 || ip_section > 255 || 

    dfs(result, level+1, ip_string + (ip_string.empty? ? '':'.') + ip_section.to_s, remaining_ip_string[(i+1)..remaining_ip_string.length])
  end
end

# @param {String} s
# @return {String[]}
def restore_ip_addresses(s)
    result = []
    result.tap {|r| dfs(r, 0, '', s)}
end
