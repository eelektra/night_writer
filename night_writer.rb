require './lib/nightwriter.rb'

english_msg = NightWriter.new                                         #creates a NightWriter var english_msg

file = File.open(ARGV[0], "r")                                        #opens a new file and assigns it to file
message = file.read                                                   #reads the file and assigns it to the existing file message.txt
file.close                                                            #closes file                                                                
puts "created 'braille.txt' containing #{message.length} characters"  #prints the string to the terminal

writer = File.open(ARGV[1], "w")                                      #opens a new file and assign it to writer
english_msg.translate_english_to_braille(message, writer)             # call method(translate english_to_braille) that will translate message to braille and write translated english message to new file (braille.txt)
writer.close                                                          #close writer
