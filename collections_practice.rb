def sort_array_asc(numbers)
    numbers.sort do |a, b|
        if a == b
            0
        elsif a < b
            -1
        elsif a > b
            1
        end
    end
 end

 def sort_array_desc(numbers)
    numbers.sort do |a, b|
        if a == b
            0
        elsif b < a 
            -1
        elsif b > a 
            1
        end
    end
end

def sort_array_char_count(numbers)
    numbers.sort do |a, b|
        if a.length == b.length
            0
        elsif a.length > b.length
            1
        elsif a.length < b.length
            -1
        end
    end
end

def swap_elements(array)
    array[1], array[2] = array[2], array[1]
    return array
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    new_array = []
    array.each do |string|
        string.slice!(2)
        new_array << string.insert(2, "$")
    end
    new_array
 end

 def find_a(array)
    array.select do |string|
        string.start_with?("a")
    end
end

def sum_array(array)
    array.inject do |sum, n|
        sum + n               # also can be written {|sum, n| sum + n }
    end
end

def add_s(array)
    array.each_with_index.collect do |element, index|
        if index == 1   #index is always 1 less because 1st element starts at 0
            element
        else 
            element.insert(-1, "s") #-1 is the last position of the string, array,etc
        end
    end
end
        