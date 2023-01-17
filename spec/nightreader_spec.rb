require './spec/spec_helper'
require './lib/nightreader'

describe NightReader do
  describe 'initialize' do
    input = File.open("brlle.txt", "w+")  { |file| file.write(".00.0.\n0000.0\n0.....\n") }                                      #opens a new file and assigns it to file
    output = File.open("engl.txt", "w+") 

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

    xit 'can convert braille the to the' do
      english_msg = NightReader.new
      expect(['.0', '00', '0.'], ['0.', '00', '..'], ['0.', '.0', '..']).to eq('the')
    end
  end
end