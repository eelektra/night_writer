class NightWriter

  def translate_english_to_braille(message, writer)
    translator = {'a'=>['0.', '..', '..'], 
                  'b'=>['0.', '0.', '..'],
                  'c'=>['00', '..', '..'],
                  'd'=>['00', '.0', '..'],
                  'e'=>['0.', '.0', '..'],
                  'f'=>['00', '0.', '..'],
                  'g'=>['00', '00', '..'],
                  'h'=>['0.', '00', '..'],
                  'i'=>['.0', '.0', '..'],
                  'j'=>['.0', '0.', '..'],
                  'k'=>['0.', '..', '0.'],
                  'l'=>['0.', '0.', '0.'],
                  'm'=>['00', '..', '0.'],
                  'n'=>['00', '.0', '0.'],
                  'o'=>['0.', '.0', '0.'],
                  'p'=>['00', '0.', '0.'],
                  'q'=>['00', '00', '0.'],
                  'r'=>['0.', '00', '0.'],
                  's'=>['.0', '0.', '0.'],
                  't'=>['.0', '00', '0.'],
                  'u'=>['0.', '..', '00'],
                  'v'=>['0.', '0.', '00'],
                  'w'=>['.0', '00', '.0'],
                  'x'=>['00', '..', '00'],
                  'y'=>['00', '.0', '00'],
                  'z'=>['0.', '.0', '00'],
                  ' '=>['..', '..', '..']
                }
    # split into individual english chars and translate
    braille_character = []
    message.split(//).each do |char|
      braille_character << translator[char] 
    end 
    
    # transpose the arrays of braille chars into an array of three arrays 
    # of tops, middles, and bottoms
    braille_character.transpose
    
    #store the transposed array in transposed array using #concat. 
    #if you use shovel it will be tripled nested
    transposed_array = []
    transposed_array.concat(braille_character.transpose)
    
    # if the first element(tops array) of transposed array < 40
    if transposed_array[0].length <= 40
      joined_array = transposed_array.map do |array|
        #join array elements together and start a new line after each element, and write it to braille.txt
        writer.write("#{array.join}\n")                    
      end
    else
      chunk_it(transposed_array, writer)
    end
  end

  def chunk_it(transposed_array, writer)
    #assign each array of transposed_array into three separate arrays
    top = transposed_array[0]
    mid = transposed_array[1]
    bottom = transposed_array[2]
   
    #break each array into sets of 40
    if transposed_array.size < 80
    top_line = top.each_slice(40).to_a 
    middle_line = mid.each_slice(40).to_a
    bottom_line = bottom.each_slice(40).to_a
    
    #write all the top lines follwed by m
    writer.write("#{top_line[0].join}\n")
    writer.write("#{middle_line[0].join}\n")
    writer.write("#{bottom_line[0].join}\n\n")
    writer.write("#{top_line[1].join}\n")
    writer.write("#{middle_line[1].join}\n")
    writer.write("#{bottom_line[1].join}\n")

    elsif top.size < 120
    #break each array into sets of 40
      top_line = top.each_slice(40).to_a 
      middle_line = mid.each_slice(40).to_a
      bottom_line = bottom.each_slice(40).to_a
      
      #write all the top lines follwed by m
      writer.write("#{top_line[0].join}\n")
      writer.write("#{middle_line[0].join}\n")
      writer.write("#{bottom_line[0].join}\n")
      writer.write("#{top_line[1].join}\n")
      writer.write("#{middle_line[1].join}\n")
      writer.write("#{bottom_line[1].join}\n")
      writer.write("#{top_line[2].join}\n")
      writer.write("#{middle_line[2].join}\n")
      writer.write("#{bottom_line[2].join}\n")
    else puts "more than 120 characters"
    end
  end
end

# require 'pry'; binding.pry
   
#for one character message
  #   braille_character = translator[message]
  #   braille_character[0] + "\n" +  braille_character[1] + "\n" + braille_character[2] 

 # for 3 character message

# braille_character[0][0] + braille_character[1][0] + braille_character[2][0] + "\n" +
# braille_character[0][1] + braille_character[1][1] + braille_character[2][1] + "\n" +
# braille_character[0][2] + braille_character[1][2] + braille_character[2][2]

# or

# braille_character[0][0] + "\n" + braille_character[0][1] + "\n" + braille_character[0][2]

# for less than or equal to 40 characters
#     ' '=>['..', '..', '..']
# }
#split the message into individual string characters
# iterate over each character in the array, find it in the hash(it's a key), and
# shovel its value(braille array) into braille_character
# braille_character = []
# message.split(//).each do |char|
#   braille_character << translator[char] 
# end 

# transpose the arrays of braille chars into three arrays of tops, middles, and bottoms
# braille_character.transpose
# transposed_array = []
# require 'pry'; binding.pry
# transposed_array.concat(braille_character.transpose) #store transposed array in transposed array. if you use shovel, it will be tripled nested
# joined_array = transposed_array.map do |array|
#   writer.write("#{array.join}\n")                    #join array elements together, start a new line after each element, and write it to braille.txt
# end
# end
# end 

# chunked_array = []
#     transposed_array.each do |array|
#       chunked_array.concat(array.each_slice(40).to_a)   
#     end
#     chunked_array.transpose
    
#       writer.write("#{chunked_array[i].join}\n")