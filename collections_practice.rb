require "pry"

def begins_with_r(tools)
  tools.each do |ele|
    if !ele.start_with?("r")
      return false
    end
  end
  
  return true
end


def contain_a(arr)
  a_arr = []
  
  arr.each do |ele|
    chars = ele.split("")
    if chars.include?("a")
      a_arr << ele
    end
  end
  
  return a_arr
end


def first_wa(arr)
  wa_arr = []
  
  arr.each do |ele|
    str = ele.to_s
    if str.start_with?("wa")
      wa_arr << ele
    end
  end
  
  return wa_arr[0]
end  


def remove_non_strings(arr)
  arr.delete_if {|ele| ele.class != String}
  
  return arr
end

def count_elements(arr)
  arr.uniq.each do |hash|
    #binding.pry
    hash[:count] = arr.count(hash)
  end
end

def merge_data(arr1,arr2)
  arr1.each do |hash1|
    arr2.each do |hash2|
     # binding.pry
      hash1.merge!(hash2[hash1[:first_name]])
    end
  end
end

def find_cool(arr)
  arr.each do |hash|
    if hash[:temperature] == "cool"
      return [hash]
    end
  end
end

def organize_schools(schools)
  organized = {}
  
  schools.each do |pair|
    if organized[pair[1][:location]] == nil
      organized[pair[1][:location]] = [pair[0]]
    else
      organized[pair[1][:location]].push(pair[0])
      #binding.pry
    end
  end
  
  return organized
  
end
