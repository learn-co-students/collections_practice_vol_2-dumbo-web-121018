# # your code goes here

require "pry"

def begins_with_r(array)
  array.each do |word|
    if word.start_with?("r") == false
      return false
    end
  end
  true
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.each do |word| 
    if word.to_s.start_with?("wa")
      return word
    end
  end
end

def remove_non_strings(array)
  array.select do |item|
    item.class == String
  end
end

def count_elements(array)
  array1 = []
  array2 = []
  array.each do |item|
    item.each do |k, v|
      array1 << v
    end
  end
  array1.each do |item|
    array2 << {:name => item, :count => array1.count(item)}
  end
  
  array2.uniq
end

def merge_data(keys, data)
  new_hash = []
  keys.each do |item|
    new_hash << item
  end

  data[0].each do |name, dict|
    # binding.pry
    # puts name, dict
    i = 0
    while i < new_hash.length
      if name == new_hash[i][:first_name]
        new_hash[i].merge!(dict)
        i+=1
      else
        i+=1
      end
    end
  end

  new_hash
end

def find_cool(array)
  array.select do |item|
    item[:temperature] == "cool"
  end
end

def organize_schools(hash)
  new_hash = {}
  hash.each do |name, place|
    new_hash[place[:location]] = []
  end
  hash.each do |name, place|
    new_hash[place[:location]].push(name)
  end
  new_hash
end

