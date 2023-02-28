=begin
Convert a hash into an array. Nothing more, Nothing less.
Input - {name: 'Jeremy', age: 24, role: 'Software Engineer'}
Output - [["age", 24], ["name", "Jeremy"], ["role", "Software Engineer"]]

=end
input = {name: 'Jeremy', age: 24, role: 'Software Engineer'}
hash = {}
input.each{|k,v| hash[k.to_s] = v}
p hash.sort.to_a
