# 468. Validate IP Address
# 79 / 79 test cases passed.
# Status: Accepted
# Runtime: 32 ms

def is_valid_ipv4(ip)
    ip_addr = ip.split('.')
    return false unless ip_addr.length == 4

    ip_addr.all? do |sec|
        sec_i = sec.to_i
        sec_i.to_s == sec && sec_i >= 0 && sec_i <= 255
    end
end

def is_valid_ipv6(ip)
    ip_addr = ip.split(':')
    return false unless ip_addr.length == 8

    ip_addr.all? do |sec|
        sec_i = sec.to_i(16)
        (sec =~ /^[0-9A-F]+$/i) == 0 && sec.length > 0 && sec.length <= 4 && sec_i >= 0 && sec_i <= 65535
    end
end

# @param {String} ip
# @return {String}
def valid_ip_address(ip)
    return 'Neither' if ip.count('.') > 0 && ip.count(':') > 0
    return 'IPv4' if ip.count('.') == 3 && is_valid_ipv4(ip)  
    return 'IPv6' if ip.count(':') == 7 && is_valid_ipv6(ip)
    return 'Neither'
end
