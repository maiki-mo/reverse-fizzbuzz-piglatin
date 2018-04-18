def reversal(str)
    new_array = str.split('')
    rev_array = []
    new_array.size.times { rev_array << new_array.pop }
    puts rev_array.join.downcase.capitalize
end

# string = "I am a string"
# reversal(string)

def fizzbuzz
    x = 0
    100.times {
      x += 1
      if x % 15 == 0
        p "pop"
      elsif x % 5 == 0
        p "buzz"
      elsif x % 3 == 0
        p "fizz"
      else
        p x
      end
    }
end

# fizzbuzz

def pig_latin(sentence)
    array_string = sentence.downcase.split(' ')
    return_array = []
    vowel_array = ["a", "e", "i", "o", "u"]
    for i in array_string
        if i.length <= 1
           one_array = [i + "-ay"]
           return_array.push(one_array)
        else
            for vowel_element in vowel_array
                if vowel_element == first_letter = i[0] && vowel_element == second_letter = i[1]
                three_char = i[*0..2]
                p three_char
                push_three_chars = i.gsub("#{three_char}", "") + "-#{three_char}ay"
                return_array.push(push_three_chars)
                # elsif vowel_element == first_letter = i[0]
                # one_char = i[0]
                # push_char = i.gsub("#{one_char}", "") + "-#{one_char}ay"
                # return_array.push(push_char)
                # else
                # vowel_element == first_letter = i[1]
                # chars = i[*0..1]
                # push_chars = i.gsub("#{chars}", "") + "-#{chars}ay"
                # return_array.push(push_chars)
                end
            end
        end
    end
    puts return_array.uniq.join(' ').capitalize + "."
end

string = "I can probably make it any sentence aardvark"
pig_latin(string)