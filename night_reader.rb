require './lib/nightreader.rb'

english_msg = NightReader.new                                          #creates a NightWriter var english_msg

file = File.open(ARGV[0], "r")                                        #opens a new file and assigns it to file
message = file.read                                                   #reads the file and assigns it to the existing file message.txt
file.close                                                            #closes file                                                                
puts "created 'english.txt' containing #{message.length} characters"  #prints the string to the terminal

writer = File.open(ARGV[1], "w")                                      #opens a new file and assign it to writer
writer.write(english_msg.translate_braille_to_english(message))       #write translated english message to new file (braille.txt)
writer.close                                                          #close writer
