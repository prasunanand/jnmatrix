require 'nmatrix'
require 'benchmark'


shape = [100, 100]
elements1 = Array.new(10000) { rand(1...999999) }
elements2 = Array.new(10000) { rand(1...999999) }

a = NMatrix.new(shape, elements1 , dtype: :float32)
b = NMatrix.new(shape, elements2 , dtype: :float32)

puts "Benchmarking for Addition"
puts Benchmark.measure{a+b}

puts "Benchmarking for Subtraction"
puts Benchmark.measure{a-b}

puts "Benchmarking for Matrix Multiplication"
puts Benchmark.measure{a.dot(b)}