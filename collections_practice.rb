require 'pry'

def begins_with_r(array)
  for item in array do
    if (item.start_with?("r") == false)
      not_r = true
    end
  end
  if not_r
    false
  else
    true
  end
end




def contain_a(array)
  list_of_a_words = []
  array.each do |item|
    if item.include?('a')
      list_of_a_words << item
    end
  end
  list_of_a_words
end




def first_wa(array)
  array.find do |item|
    item.to_s.start_with?("wa")
  end
end




def remove_non_strings(array)
  for item in array do
    array.delete_if{|i| (i.is_a?(String) == false)}
  end
  array
end




def count_elements(array)
  arr = array.group_by {|element| element.itself}
  arr.map {|k, v| k.merge(count: v.length)}
end


# [{:first_name => "blake", :awesomeness => 10, :height => "74", :last_name => "johnson",
# :motto => "Have a koala-ty day!"},
# { :first_name => "ashley", :awesomeness => 9, :height => 60, :last_name => "dubs",
# :motto => "I dub thee, 'Lady Brett Ashley'."}]

def merge_data(arr_one, arr_two)
  merged_arr = []
  arr_two.map do |first_hash|
    first_hash.each do |name, value|
      merge_hash = {}
      arr_one.each do |second_hash|
        second_hash.each do |attr, info|
          if info == name
            merge_hash = second_hash.merge(value)
            merged_arr << merge_hash
          end
        end
      end
    end
  end
  merged_arr
end

def find_cool(array)
  cool = []
  array.each do |hash|
  hash.each {|k, v| v == "cool"? cool << hash : nil}
  end
  cool
end

def organize_schools(schools)
  organized = {}
  schools.each do |school, location_hash|
    locations = location_hash[:location]
    if organized[locations]
      organized[locations] << school
    else
      organized[locations] = []
      organized[locations] << school
    end
  end
  organized
end
