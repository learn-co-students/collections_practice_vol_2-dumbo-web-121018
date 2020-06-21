def begins_with_r(array)
  array.each do |word|
    letters = word.chars
    if letters[0] != "r"
      return false
    end
  end
  true
end

def contain_a(array)
  a_words = []
  array.each do |word|
    letters = word.chars
    if letters.any?{|letter| letter == "a"}
      a_words << word
    end
  end
  a_words
end

def first_wa(array)
  array.each do |word|
    if word.is_a?(String)
      letters = word.chars
      if letters[0] == "w" && letters[1] == "a"
        return word
      end
    end
  end
end

def remove_non_strings(array)
  array.keep_if{|element| element.is_a? String}
end

def count_elements(array)
  #Takes the array of hashes and creates a new hash of names as keys and the
  #count of their occurrence as the value.
  # ex. {"blake" => 2, "ashley" => 1}
  array.each_with_object(Hash.new(0)) do |each_hash, new_hash|
    new_hash[each_hash[:name]] += 1
  end
  .map { |name, count| { name: name, count: count } }
  #The above takes the new hash and rewrites it as an array of two hashes,
  #stating each person's name and their count as separate elements.
end

def merge_data(keys, data)
  merged_data = keys
  for i in 0...merged_data.length do
    name = keys[i][:first_name] #Stores the person's name into variable name.
    merged_data[i].merge!(data[0][name]) #Adds hash contents into merged_data.
  end
  merged_data
end

def find_cool(array)
  array.keep_if{|hash| hash[:temperature] == "cool"}
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school_name, location|
    city = location[:location] #Stores city name into a variable.
    if organized_schools[city] == nil #Checks if the city hasn't been added.
      organized_schools[city] = [] #Adds the city key with an empty array.
    end
    organized_schools[city] << school_name #Shovels school into the array.
  end
  organized_schools
end
