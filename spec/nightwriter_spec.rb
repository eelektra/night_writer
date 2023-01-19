require './spec/spec_helper'
require './lib/nightwriter'

describe NightWriter do
  describe 'initialize' do
  input = File.open("engl.txt", "w+")  { |file| file.write("the cat") }                                      #opens a new file and assigns it to file
  output = File.open("brlle.txt", "w+") 

    it 'exists' do
      english_msg = NightWriter.new
      expect(english_msg).to be_a(NightWriter)
    end

    it 'can convert the letter a to braille' do
      english_msg = NightWriter.new
      english_msg.translate_english_to_braille('a', output)
      output.rewind
      expect(File.read(output)).to eq("0.\n..\n..\n")
    end

    it 'can convert the word the to braille' do
      english_msg = NightWriter.new
      english_msg.translate_english_to_braille('the', output)
      output.rewind
      expect(File.read(output)).to eq(".00.0.\n0000.0\n0.....\n")
    end

    it 'can convert the sentence the quick brown fox jumps over the lazy dog' do
      english_msg = NightWriter.new
      english_msg.translate_english_to_braille('the quick brown fox jumps over the lazy dog', output)
      output.rewind
      expect(File.read(output)).to eq(".00.0...000..0000...0.0.0..000..000.00...00.0000.0..0.0.0.0....00.0...0.0.0.00..\n0000.0..00...0......0.00.000.0..0..0....0.....0.0....00..000..0000.0..0....0.0..\n0.......0.00....0.....0.0..00.....0.00....000.0.0...0.00..0...0.......0...0000..\n000.00\n.0.000\n..0...\n")
    end

    it 'can convert a transposed array and write it to the braille.txt file' do
      english_msg = NightWriter.new
      english_msg.chunk_it([[".0", "0.", "0."], ["00", "00", ".0"], ["0.", "..", ".."]], output)
      output.rewind
      expect(output.sysread(21)).to eq(".00.0.\n0000.0\n0.....\n")
      # expect(File.read(output)).to eq(".00.0...000..0000...0.0.0..000..000.00...00.0000.0..0.0.0.0....00.0...0.0.0.00..\n0000.0..00...0......0.00.000.0..0..0....0.....0.0....00..000..0000.0..0....0.0..\n0.......0.00....0.....0.0..00.....0.00....000.0.0...0.00..0...0.......0...0000..\n000.00\n.0.000\n..0...\n")
    end
  end
end