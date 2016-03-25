require 'mdarray'
require 'benchmark'


shape = [10, 10]
elements1 = Array.new(100) { rand(1...999999) }
elements2 = Array.new(100) { rand(1...999999) }

b = MDMatrix.double(shape,elements1)
a = MDMatrix.double(shape,elements2)

puts "Benchmarking for Addition"
puts Benchmark.measure{a+b}

# puts "Benchmarking for Subtraction"
# puts Benchmark.measure{-b }

puts "Benchmarking for Multiplication 1st run"
puts Benchmark.measure{a*b}