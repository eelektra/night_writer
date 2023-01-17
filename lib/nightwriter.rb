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
    # iterate over each character in the array, find it in the hash(it's a key), and
    # shovel its value(braille array)  into braille_character
    braille_character = []
    message.split(//).each do |char|
      braille_character << translator[char] 
    end 
    braille_character.transpose
    transposed_array = []
    transposed_array.concat(braille_character.transpose) #store it in iteratable array and not triple nested
    joined_array = transposed_array.map do |array|
      writer.write("#{array.join}\n")                    #join array elements together, start a new line after each element, and write it to braille.txt
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