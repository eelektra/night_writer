class NightReader

  def translate_braille_to_english(message, writer)
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
    
    #convert the message in braille.txt to an array and store it in an empty array
    braille_array = []
    braille_array = message.split($/)
     
    # chunk the array into an array of arrays by twos 
    single_string_array = braille_array.map do |string|
      string.scan(/../)
    end
    
    # then convert to an array of arrays by character
    #char_array = single_string_array.transpose
    i=0
    n=2
    char_array = []
    while n < single_string_array.length
      char_array.concat(single_string_array[i..n].transpose)
      i += 3
      n += 3
    end
     
    #get the array's value which will be the translation or english letter
    #and write it to writer (original_message.txt)
    char_array.each do |char|
      writer.write(translator[char])  
    end  
  end
end


    
