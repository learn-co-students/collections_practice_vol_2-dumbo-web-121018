# your code goes here
def begins_with_r(array)
  array.all? { |element| element.downcase.chr == "r"}
  end

def contain_a(array)
array.select { |element| element.include?("a")}
end

def first_wa(array)
array.find { |element| element.to_s.start_with?("wa")}
end

def remove_non_strings(array)
array.reject { |element| element.class != String}
end
def count_elements(array)
  amount = Hash.new(0)
   array.collect {|element| amount[element] += 1 }
   amount.collect { |hash, num| hash[:count] = num }
   amount.keys
end

def merge_data(key, value)
key.each { |name| value.each { |hash| name.merge!(hash[name[:first_name]])}}
end
def find_cool(array)
  array.select {|element|
  element if element.has_value?("cool")
  }
end
 def organize_schools(schools)
  locations = {}
    schools.each { |school, hash_location|
      hash_location.each { |symbol, location|
       locations[location] == nil ? locations[location] = [school] : locations[location] << school
      }
    }
    locations
end
