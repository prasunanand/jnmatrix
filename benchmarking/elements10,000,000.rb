require './../lib/nmatrix.rb'


shape1 = [10000, 1000]
shape2 = [1000, 10000]
shape3 = [1000, 10000]

elements1 = Array.new(10000000) { rand(1...999999) }
elements2 = Array.new(10000000) { rand(1...999999) }
elements3 = Array.new(10000000) { rand(1...999999) }

a = Nmatrix.new("double",shape1,elements1)
b = Nmatrix.new("double",shape2,elements2)
c = Nmatrix.new("double",shape3,elements3)

puts "Benchmarking for Addition"
puts Benchmark.measure{add(b,c)}

# puts "Benchmarking for Subtraction"
# puts Benchmark.measure{subtract(b,c)}

# puts "Benchmarking for Multiplication"
# puts Benchmark.measure{multiply(a,b)}