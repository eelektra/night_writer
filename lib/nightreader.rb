class NightReader

  def translate_braille_to_english(message)
    translator = {['0.', '..', '..'] => 'a', 
                  ['0.', '0.', '..'] => 'b',
                  ['00', '..', '..'] => 'c',
                  ['00', '.0', '..'] => 'd',
                  ['0.', '.0', '..'] => 'e',
                  ['00', '0.', '..'] => 'f',
                  ['00', '00', '..'] => 'g',
                  ['0.', '00', '..'] => 'h',
                  ['.0', '.0', '..'] => 'i',
                  ['.0', '0.', '..'] => 'j',
                  ['0.', '..', '0.'] => 'k',
                  ['0.', '0.', '0.'] => 'l',
                  ['00', '..', '0.'] => 'm',
                  ['00', '.0', '0.'] => 'n',
                  ['0.', '.0', '0.'] => 'o',
                  ['00', '0.', '0.'] => 'p',
                  ['00', '00', '0.'] => 'q',
                  ['0.', '00', '0.'] => 'r',
                  ['.0', '0.', '0.'] => 's',
                  ['.0', '00', '0.'] => 't',
                  ['0.', '..', '00'] => 'u',
                  ['0.', '0.', '00'] => 'v',
                  ['.0', '00', '.0'] => 'w',
                  ['00', '..', '00'] => 'x',
                  ['00', '.0', '00'] => 'y',
                  ['0.', '.0', '00'] => 'z',
                  ['..', '..', '..'] => ' '
                  }
      

    # divide braille characters into 
    message.split(%r{\s*})
    
    # iterate over each character in the array, find it in the hash(it's a key), and shovel it into braille_character
    
    braille_character = []
    message.split(%r{\s*}).each do |char|
      braille_character << translator[char]
    end 

    # transpose the array so the tops, middle, and bottom of each braille character is in it's own array.
    braille_character.transpose
      braille_character.each do |array|
      array + '\n'
    end
  end
end
end