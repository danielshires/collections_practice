array_asc = [25, 7, 1]
array_reverse = [12, 4, 35]
array_string = ["dogs", "cat", "Horses"]
array_swap = ["blake", "ashley", "scott"]
array_find = ["apple", "orange", "pear", "avis", "arlo", "ascot" ]
array_sum = [11,4,7,8,9,100,134]
array_add_s = ["hand","feet", "knee", "table"]

def sort_array_asc (array)
array.sort
end

def sort_array_desc(array)
    array.sort { |a,b| b<=>a}
end

def sort_array_char_count(array) 
    array.sort { |a,b| a.length <=> b.length}
end

def swap_elements(array)
    array[1], array[2]=array[2], array[1]
    array
end

def swap_elements_from_to(array, index, dest_index)
 array[index], array[dest_index]=array[dest_index], array[index]
 array
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    array.each do |string|
        string[2] = "$"
        string
    end
end

def find_a(array)
    array.select do |string|
        string.start_with?("a")
    end
end

def sum_array(array)
array.inject(:+)
end

# def add_s(array)
#     array.each_with_index do |element, index|
#         index != 1 ? element<<"s" : nil
#     end
# end


def add_s(array)
    array.each_with_index{|element,index| index != 1 ? element<<"s" : element}
end


# puts sort_array_char_count(array_string).inspect
# puts swap_elements_from_to(array_swap,0, 1).inspect
# puts reverse_array(array_reverse).inspect
# puts kesha_maker(array_swap).inspect
# puts find_a(array_find).inspect
# puts sum_array(array_sum).inspect
puts add_s(array_add_s).inspect
