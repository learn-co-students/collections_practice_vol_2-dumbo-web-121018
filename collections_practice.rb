require 'pry'

# your code goes here
def begins_with_r(array)
  answer = true
  i = 0
  while i < array.length
    if array[i][0] != 'r'
      answer = false 
    end
    i += 1
  end
  return answer
end

def contain_a(array)
  answer = []
  i = 0 
  while i < array.length 
    if array[i].include?"a"
      answer << array[i]
    end
    i += 1
  end
  return answer
end 

def first_wa(array)
  i = 0 
  new_array = remove_non_strings(array)
  while i < new_array.length 
    if new_array[i].include? "wa" 
      return new_array[i]
    end
    i += 1
  end
end 

def remove_non_strings(array)
  answer = []
  i = 0 
  while i < array.length
    if array[i].is_a? String 
      answer << array[i]
    end
    i += 1
  end 
  return answer
end


def count_elements(input)
  counts = Hash.new(0)
  input.collect {|element| counts[element]+=1}
    counts.collect do |hash, number|
      hash[:count] = number
    end 
  counts.keys
end

def merge_data (key, value)
  key.each do |name|
    data.each do |hash|
      name.merge!(hash[name[:first_name]])
    end 
  end
end 

def find_cool(array)
  array.select {|entry| entry if entry.has_value?("cool")}
end

def organize_schools (schools)
  location_hash = {}
  schools.each do |school, location_info|
    location_info.each do |key, location|
      if location_hash[location] == nil 
        location_hash[location] = [school]
      else 
        location_hash[location].push(school)
      end 
    end 
  end 
  location_hash
end