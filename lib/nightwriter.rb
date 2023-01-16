class NightWriter

  # attr :braille_character

  # def initialize
  #   @braille_character = []
  # end

  def translate_english_to_braille(message)
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
      

    # split word into an array of individual char strings
    message.split(%r{\s*})
    
    # iterate over each character in the array, find it in the hash(it's a key), assign its value to braille_character,
    # and return the first element of each character
    
    braille_character = []
    message.split(%r{\s*}).each do |char|
      braille_character << translator[char]
    end 
    braille_character.transpose
    braille_character.each do |array|
    array + '\n' + array + '\n' + array
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