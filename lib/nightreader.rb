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
    # braille_array = []
    braille_array = message.split($/)
    require 'pry'; binding.pry            
    #split the array into single string elements
    # single_string_array = braille_array.split(//)

    # chunk the array to an array of arrays by twos  
    chunked_array = braille_array.to_s.each_slice(2).to_a
    
    # then convert to an array of arrays by character

    #get the array's value which will be the translation or english letter
    #and write it to writer (original_message.txt)
     writer.write(translator[braille_array])             
  end
end

    # require 'pry'; binding.pry

    # for one character
    #convert the message in braille.txt to an array and store it in an empty array
    # braille_array = []
    # braille_array = message.split($/)
    # require 'pry'; binding.pry
    #get the array's value which will be the translation or english letter
    #and write it to writer (original_message.txt)
    #  writer.write(translator[braille_array])   