class NightWriter

  def initialize
    
  end

  def translate_english_to_braille(message)
    translator = {'a'=> ['0.', '..', '..'], 
                  'b'=>[]
                  'c'=>[]
                  'd'=>[]
                  'e'=>[]
                  'f'=>[]
                  'g'=>[]
                }
                                              #look at first character of message
    braille_character = translator[message]   #find it in the hash(it will be a key)
    braille_character[0] + "\n" +   braille_character[1] + "\n" + braille_character[2]           #print out  the value for that key in 3 separate lines
  end

  english_msg = NightWriter.new

  file = File.open(ARGV[0], "r")  #opens a new file and assigns it to file
  message = file.read             #reads the file and assigns it to the existing file message.txt
  file.close                      #closes the new file                                                                
  puts "created 'braille.txt' containing #{message.length} characters"  #prints the string to the terminal
  
  writer = File.open(ARGV[1], "w")                                      #opens a new file and assign it to writer
  writer.write(english_msg.translate_english_to_braille(message))       #write translated english message to new file (braille.txt)
  writer.close                                                          #close file
  

end