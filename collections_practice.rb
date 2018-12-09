require 'pry'
# your code goes here
def begins_with_r(tools)
  !tools.any? { |t| t[0].upcase != 'r'.upcase }
end
def contain_a(elements)
  elements.select { |e| e.upcase.include? "a".upcase }
end
def first_wa(elements)
  elements.find { |e| e[0...2].upcase == 'wa'.upcase }
end

def remove_non_strings(array)
  array.delete_if { |e| !e.is_a? String }
end
def count_elements(array)
  array.each do |e|
    e[:count] = 0
    array.each do |ele|
      if ele[:name] == e[:name]
        e[:count] += 1
      end
    end
  end.uniq
end

end
