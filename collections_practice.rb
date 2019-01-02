require 'pry'
# your code goes here
def begins_with_r(array)
	array.each.all? { |a| a.start_with?('r') }
end

def contain_a(array)
	array.select { |a| a.include?('a') }
end

def first_wa(array)
	array.select { |a| a.to_s.start_with?('wa') }.first(1).join("")
end

def remove_non_strings(array)
	array.keep_if { |a| (a.is_a? String) }
end

def count_elements(array)
	# create counting hash
	  array.each_with_object(Hash.new(0)) { |a, b| b[a[:name]] += 1 }.map { |name, count| {:name => name, :count => count } }
end

def merge_data(arr1, arr2)
	merged = []
  	arr1.each { |a| arr2.first.map { |b, c| if a.values[0] == b then merged << a.merge(c) end } }
  	merged
end

def find_cool(array)
	array.select { |hash| hash.any? { |key, value| value == "cool"} }
end

def organize_schools(hash)
	school_by_loc = {}
	hash.map { |a, b| school_by_loc[b[:location]] = [] }
	binding.pry
	school_by_loc.each { |a, b| hash.each { |c, d| if a == d[:location] then b << c end } }

end	