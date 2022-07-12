# Bryce Doughman
# Period 3

# Determine whether a string contains a Social Security Number.
def has_ssn?(string)
string =~ /\d{3}-\d{2}-\d{4}/ ? true : false
end

# Find and return a Social Security Number.
def grab_ssn(string)
/\d{3}-\d{2}-\d{4}/.match(string).to_s ? /\d{3}-\d{2}-\d{4}/.match(string).to_s : ""
end

# Find and return all Social Security Numbers.
def grab_all_ssns(string)
	string.scan(/\d{3}-\d{2}-\d{4}/)
end

# p grab_all_ssns('The numbers are 350-80-0744, 234-60-1422, and 013-60-8762')
# Obfuscate all Social Security Numbers. Example: XXX-XX-4430.
def hide_all_ssns(string)
	string.gsub(/\d{3}-\d{2}/, "XXX-XX")
end

# Format all Social Security Numbers to use single dashes for delimiters:
# '480014430', '480.01.4430', and '480--01--4430' would all be formatted '480-01-4430'.
def format_ssns(string)
	string.gsub(/(\d{3})\D*(\d{2})\D*(\d{4})/, '\1-\2-\3')
end