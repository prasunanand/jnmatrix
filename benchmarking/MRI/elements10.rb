require 'nmatrix'
require 'benchmark'

shape1 = [10, 1]
shape2 = [1, 10]
shape3 = [1, 10]

elements1 = Array.new(10) { rand(1...999999) }
elements2 = Array.new(10) { rand(1...999999) }
elements3 = Array.new(10) { rand(1...999999) }

a = NMatrix.new(shape1, elements1 , dtype: :float32)
b = NMatrix.new(shape2, elements2 , dtype: :float32)
c = NMatrix.new(shape3, elements3 , dtype: :float32)

puts "Benchmarking for Addition"
puts Benchmark.measure{b + c}

puts "Benchmarking for Subtraction"
puts Benchmark.measure{b - c}

puts "Benchmarking for Matrix Multiplication"
puts Benchmark.measure{a.dot(b)}