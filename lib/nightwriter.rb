class NightWriter

  # def initialize
    
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
                                              
    #split word into an array of strings


    #iterate over each character in the array, find it in the hash(it will be a key) and assign its value to braille character
    braille_character = translator[message]  
    
    #return the value for that key in 3 separate lines
    braille_character[0] + "\n" +   braille_character[1] + "\n" + braille_character[2]           
  end

  # english_msg = NightWriter.new

  # file = File.open(ARGV[0], "r")                                        #opens a new file and assigns it to file
  # message = file.read                                                   #reads the file and assigns it to the existing file message.txt
  # file.close                                                            #closes the new file                                                                
  # puts "created 'braille.txt' containing #{message.length} characters"  #prints the string to the terminal
  
  # writer = File.open(ARGV[1], "w")                                      #opens a new file and assign it to writer
  # writer.write(english_msg.translate_english_to_braille(message))       #write translated english message to new file (braille.txt)
  # writer.close                                                          #close file
  

end