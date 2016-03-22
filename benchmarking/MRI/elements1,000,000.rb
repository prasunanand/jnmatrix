require 'nmatrix'
require 'benchmark'


shape = [1000, 1000]
elements1 = Array.new(1000000) { rand(1...999999) }
elements2 = Array.new(1000000) { rand(1...999999) }

a = NMatrix.new(shape, elements1 , dtype: :float32)
b = NMatrix.new(shape, elements2 , dtype: :float32)

puts "Benchmarking for Addition"
puts Benchmark.measure{a+b}

puts "Benchmarking for Subtraction"
puts Benchmark.measure{a-b}

puts "Benchmarking for Matrix Multiplication"
puts Benchmark.measure{a.dot(b)}
# puts a.dot(b)