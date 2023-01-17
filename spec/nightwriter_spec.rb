require './spec/spec_helper'
require './lib/nightwriter'

describe NightWriter do
  describe 'initialize' do
    it 'exists' do
      english_msg = NightWriter.new
      expect(english_msg).to be_a(NightWriter)
    end

    it 'can convert the letter a to braille' do
      english_msg = NightWriter.new
      # create a file for testing and open a writer file
      # read the file and set it as a local variable
      #that will give you the ability to pass arguments to the method translate
      file = File.open(ARGV[0], "r")                                        #opens a new file and assigns it to file
      message = file.read                                                   #reads the file and assigns it to the existing file message.txt
      file.close   
      writer = File.open(ARGV[1], "w")
      writer.write(english_msg.translate_english_to_braille(message, writer))
      expect(translate_english_to_braille('a', writer)).to eq(['0.', '..', '..'])
    end

    xit 'can convert the letter e to braille' do
      english_msg = NightWriter.new
      expect(translate_english_to_braille('e', writer)).to eq(['0.', '.0', '..'])
    end

    xit 'can convert the letter h to braille' do
      english_msg = NightWriter.new
      expect('h').to eq(['0.', '00', '..'])
    end

    xit 'can convert the letter t to braille' do
      english_msg = NightWriter.new
      expect('t').to eq(['.0', '00', '0.'])
    end

    xit 'can convert a space to braille' do
      english_msg = NightWriter.new
      expect(' ').to eq(['..', '..', '..'])
    end

    xit 'can convert the word the to braille' do
      english_msg = NightWriter.new
      expect('the').to eq(['.0', '00', '0.'], ['0.', '00', '..'], ['0.', '.0', '..'])
    end

    xit 'can convert the sentence the quick brown fox jumps over the lazy dog' do
      english_msg = NightWriter.new
      expect('the').to eq([])
    end
  end
end