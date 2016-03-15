require './../lib/nmatrix.rb'


shape = [10, 10]
elements1 = Array.new(100) { rand(1...999999) }
elements2 = Array.new(100) { rand(1...999999) }

b = Nmatrix.new("double",shape,elements1)
a = Nmatrix.new("double",shape,elements2)

puts "Benchmarking for Addition"
puts Benchmark.measure{add(a,b)}

puts "Benchmarking for Subtraction"
puts Benchmark.measure{subtract(a,b)}

puts "Benchmarking for Multiplication"
puts Benchmark.measure{multiply(a,b)}