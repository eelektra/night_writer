require './lib/nightreader.rb'

braille_msg = NightReader.new                                          #creates a NightWriter instance var english_msg

file = File.open(ARGV[0], "r")                                        #opens a new file and assigns it to file
braille = file.read                                                   #reads the file and assigns it to the existing file braille.txt
file.close                                                            #closes file                                                                
puts "created #{ARGV[1]} containing #{braille.split($/).size/3} characters"  #prints the string to the terminal

writer = File.open(ARGV[1], "w")                                      #opens a new file and assign it to writer
braille_msg.translate_braille_to_english(braille, writer)             # call method(translate english_to_braille) that will translate message to braille and write translated english message to new file (braille.txt)
writer.close                                                          #close writer
