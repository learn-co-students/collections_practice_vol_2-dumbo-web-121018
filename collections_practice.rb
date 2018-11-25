# your code goes here
def begins_with_r(tools)
  tools.each do |ele|
    if !ele.start_with?("r")
      return false
    end
  end
  return true
end

def contain_a(a)
  a.select { |ele| ele.include?("a") }
end

def first_wa(wa)
  wa.each do |ele|
    if ele[0] == "w" && ele[1] == "a"
      return ele
    end
  end
end

def remove_non_strings(rand_array)
  rand_array.select { |ele| ele.class == String }
end

def count_elements(array) #mine works on repl, theirs dont
  hash = Hash.new(0)
  array.each { |ele| hash[ele] += 1 }
  arr = []
  hash.each do |key, value|
    key.each { |k, v| arr << { k => v, :count => value } }
  end
  return arr
end

def merge_data(keys, data)
new_arr = []
blake = Hash.new(0)
ashley = Hash.new(0)
  key1 = keys[0]
  key1.each do |key, value|
    blake[key] = value
  end

  key2 = keys[1]
  key2.each do |key, value|
    ashley[key] = value
  end

  data.each do |name|
    name.each do |key, value|
      if key.to_s == "blake"
        value.each do |k, v|
          blake[k] = v
        end
      end

      if key.to_s == "ashley"
        value.each do |k, v|
          ashley[k] = v
        end
      end
    end
  end
  new_arr << blake
  new_arr << ashley
  return new_arr
end

def find_cool(cool)
  cool.each do |person|
    person.each do |key, value|
      if value == "cool"
        return [person]
      end
    end
  end
end

# {
#   "flatiron school bk" => {
#     :location => "NYC"
#   },
#   "flatiron school" => {
#     :location => "NYC"
#   },
#   "dev boot camp" => {
#     :location => "SF"
#   },
#   "dev boot camp chicago" => {
#     :location => "Chicago"
#   },
#   "general assembly" => {
#     :location => "NYC"
#   },
#   "Hack Reactor" => {
#     :location => "SF"
#   }
# }

def organize_schools(schools)
  organized = {}

  schools.each do |boot_camps, location_key|
    location_key.each do |key, location|
      organized[location] = []
    end
  end
  schools.each do |boot_camps, location_key|
    location_key.each do |key, location|

      organized.each do |place, value|
        if location == place
          organized[location] << boot_camps
        end
      end

    end
  end
  return organized
end
