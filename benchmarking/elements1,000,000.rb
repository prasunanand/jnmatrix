require './../lib/nmatrix.rb'


shape = [1000, 1000]
elements1 = Array.new(1000000) { rand(1...999999) }
elements2 = Array.new(1000000) { rand(1...999999) }

b = Nmatrix.new("double",shape,elements1)
a = Nmatrix.new("double",shape,elements2)

puts "Benchmarking for Addition"
puts Benchmark.measure{add(a,b)}

puts "Benchmarking for Subtraction"
puts Benchmark.measure{subtract(a,b)}

puts "Benchmarking for Multiplication 1st run"
puts Benchmark.measure{multiply(a,b)}

puts "Benchmarking for Multiplication 2nd run"
puts Benchmark.measure{multiply(a,b)}

puts "Benchmarking for Multiplication 3rd run"
puts Benchmark.measure{multiply(a,b)}

puts "Benchmarking for Multiplication 4th run"
puts Benchmark.measure{multiply(a,b)}