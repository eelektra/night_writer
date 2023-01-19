require './spec/spec_helper'
require './lib/nightreader'

describe NightReader do
  describe 'initialize' do
    input = File.open("brlle2.txt", "w+")  { |file| file.write(".00.0.\n0000.0\n0.....\n") }                                      #opens a new file and assigns it to file
    output = File.open("engl2.txt", "w+") 

    it 'exists' do
      braille_msg = NightReader.new
      expect(braille_msg).to be_a(NightReader)
    end

    it 'can convert braille a to a' do
      braille_msg = NightReader.new
      braille_msg.translate_braille_to_english("0.\n..\n..\n", output)
      output.rewind
      expect(File.read(output)).to eq('a')
    end

    it 'can convert braille the to the' do
      braille_msg = NightReader.new
      braille_msg.translate_braille_to_english(".00.0.\n0000.0\n0.....\n", output)
      output.rewind
      expect(File.read(output)).to eq('the')
    end

    it 'can convert braille the quick brown fox jumps over the lazy dog' do
      braille_msg = NightReader.new
      braille_msg.translate_braille_to_english(".00.0...000..0000...0.0.0..000..000.00...00.0000.0..0.0.0.0....00.0...0.0.0.00..\n0000.0..00...0......0.00.000.0..0..0....0.....0.0....00..000..0000.0..0....0.0..\n0.......0.00....0.....0.0..00.....0.00....000.0.0...0.00..0...0.......0...0000..\n000.00\n.0.000\n..0...\n", output)
      output.rewind
      expect(File.read(output)).to eq('the quick brown fox jumps over the lazy dog')
    end  
  end
end