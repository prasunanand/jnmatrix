require 'mdarray'
require 'benchmark'

shape1 = [10, 1]
shape2 = [1, 10]
shape3 = [1, 10]

elements1 = Array.new(10){ rand(1...999999) }
elements2 = Array.new(10){ rand(1...999999) }
elements3 = Array.new(10){ rand(1...999999) }

a = MDMatrix.double(shape1,elements1)
b = MDMatrix.double(shape2,elements2)
c = MDMatrix.double(shape3,elements3)

puts "Benchmarking for Addition"
puts Benchmark.measure{b+c}

# puts "Benchmarking for Subtraction"
# puts Benchmark.measure{subtract(b,c)}

puts "Benchmarking for Multiplication"
puts Benchmark.measure{a*b}