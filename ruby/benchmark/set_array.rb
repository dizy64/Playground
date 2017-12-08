require 'benchmark'
require 'set'

LEN = 100000

my_arr = Array(0..LEN)

def search(container)
	container.each do |i|
		container.include?(i)
	end
end


Benchmark.bm do |x|
	x.report('arr: ') { search(my_arr) }
	x.report('set: ') { search(my_arr.to_set) }
end
