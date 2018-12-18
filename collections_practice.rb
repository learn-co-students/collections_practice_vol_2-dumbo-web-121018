# your code goes here
def begins_with_r (array)
  arr = array
  array = array.select {|element| element.downcase.start_with?("r")}
  array == arr
end

def contain_a(array)
  array.select {|element| element.include?("a")}
end

def first_wa(array)
  i = array.index{|element| element.to_s.downcase.start_with?("wa")}
  array[i]
end

def remove_non_strings(array)
  array.delete_if {|element| !element.is_a? String}
end

def count_elements(array)
  out = []
  array.each do |element|
    count = array.count(element)
    element[:count] = count
    out << element
    array.delete(element)
  end
  out
end

def merge_data(keys, data)
  keys.map do |key|
    key.merge(data[0][key[:first_name]])
  end
end

def find_cool(cool)
  cool.select {|element| element[:temperature] == "cool"}
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |schools, locations|
    locations.each do |location, city|
      new_hash[city] = []
      new_hash[city] << schools
    end
  end
  new_hash
end
