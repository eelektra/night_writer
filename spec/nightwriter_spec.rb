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
      expect(translate_english_to_braille('a', writer)).to eq(['0.', '..', '..'])
    end

    xit 'can convert the letter b to braille' do
      english_msg = NightWriter.new
      expect('b').to eq(['0.', '0.', '..'])
    end

    xit 'can convert the letter c to braille' do
      english_msg = NightWriter.new
      expect('c').to eq(['00', '..', '..'])
    end

    xit 'can convert the letter d to braille' do
      english_msg = NightWriter.new
      expect('d').to eq(['00', '.0', '..'])
    end

    xit 'can convert the letter e to braille' do
      english_msg = NightWriter.new
      expect('e').to eq(['0.', '.0', '..'])
    end

    xit 'can convert the letter f to braille' do
      english_msg = NightWriter.new
      expect('f').to eq(['00', '0.', '..'])
    end

    xit 'can convert the letter g to braille' do
      english_msg = NightWriter.new
      expect('g').to eq(['00', '00', '..'])
    end

    xit 'can convert the letter h to braille' do
      english_msg = NightWriter.new
      expect('h').to eq(['0.', '00', '..'])
    end

    xit 'can convert the letter i to braille' do
      english_msg = NightWriter.new
      expect('i').to eq(['.0', '.0', '..'])
    end

    xit 'can convert the letter j to braille' do
      english_msg = NightWriter.new
      expect('j').to eq(['.0', '0.', '..'])
    end

    xit 'can convert the letter k to braille' do
      english_msg = NightWriter.new
      expect('k').to eq(['0.', '..', '0.'])
    end

    xit 'can convert the letter l to braille' do
      english_msg = NightWriter.new
      expect('l').to eq(['0.', '0.', '0.'])
    end

    xit 'can convert the letter m to braille' do
      english_msg = NightWriter.new
      expect('m').to eq(['00', '..', '0.'])
    end

    xit 'can convert the letter n to braille' do
      english_msg = NightWriter.new
      expect('n').to eq(['00', '.0', '0.'])
    end

    xit 'can convert the letter o to braille' do
      english_msg = NightWriter.new
      expect('o').to eq(['0.', '.0', '0.'])
    end

    xit 'can convert the letter p to braille' do
      english_msg = NightWriter.new
      expect('p').to eq(['00', '0.', '0.'])
    end

    xit 'can convert the letter q to braille' do
      english_msg = NightWriter.new
      expect('q').to eq(['00', '00', '0.'])
    end

    xit 'can convert the letter r to braille' do
      english_msg = NightWriter.new
      expect('r').to eq(['0.', '00', '0.'])
    end

    xit 'can convert the letter s to braille' do
      english_msg = NightWriter.new
      expect('s').to eq(['.0', '0.', '0.'])
    end

    xit 'can convert the letter t to braille' do
      english_msg = NightWriter.new
      expect('t').to eq(['.0', '00', '0.'])
    end

    xit 'can convert the letter u to braille' do
      english_msg = NightWriter.new
      expect('u').to eq(['0.', '..', '00'])
    end

    xit 'can convert the letter v to braille' do
      english_msg = NightWriter.new
      expect('v').to eq(['0.', '0.', '00'])
    end

    xit 'can convert the letter w to braille' do
      english_msg = NightWriter.new
      expect('w').to eq(['.0', '00', '.0'])
    end

    xit 'can convert the letter x to braille' do
      english_msg = NightWriter.new
      expect('x').to eq(['00', '..', '00'])
    end

    xit 'can convert the letter y to braille' do
      english_msg = NightWriter.new
      expect('y').to eq(['00', '.0', '00'])
    end

    xit 'can convert the letter z to braille' do
      english_msg = NightWriter.new
      expect('z').to eq(['0.', '.0', '00'])
    end

    xit 'can convert a space to braille' do
      english_msg = NightWriter.new
      expect(' ').to eq(['..', '..', '..'])
    end

    xit 'can convert the word the to braille' do
      english_msg = NightWriter.new
      expect('the').to eq(['.0', '00', '0.'], ['0.', '00', '..'], ['0.', '.0', '..'])
    end
  end
end