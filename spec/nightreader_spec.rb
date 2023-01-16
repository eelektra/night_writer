require './spec/spec_helper'
require './lib/nightreader'

describe NightReader do
  describe 'initialize' do
    it 'exists' do
      braille_msg = NightReader.new
      expect(braille_msg).to be_a(NightReader)
    end

    xit 'can convert braille a to a' do
      english_msg = NightReader.new
      expect(['0.', '..', '..']).to eq('a')
    end

    xit 'can convert braille b to b' do
      english_msg = NightReader.new
      expect(['0.', '0.', '..']).to eq('b')
    end

    xit 'can convert braille c to c' do
      english_msg = NightReader.new
      expect(['00', '..', '..']).to eq('c')
    end

    xit 'can convert braille d to d' do
      english_msg = NightReader.new
      expect(['00', '.0', '..']).to eq('d')
    end

    xit 'can convert braille e to e' do
      english_msg = NightReader.new
      expect(['0.', '.0', '..']).to eq('e')
    end

    xit 'can convert braille f to f' do
      english_msg = NightReader.new
      expect(['00', '0.', '..']).to eq('f')
    end

    xit 'can convert braille g to g' do
      english_msg = NightReader.new
      expect(['00', '00', '..']).to eq('g')
    end

    xit 'can convert braille h to h' do
      english_msg = NightReader.new
      expect(['0.', '00', '..']).to eq('h')
    end

    xit 'can convert braille i to i' do
      english_msg = NightReader.new
      expect(['.0', '.0', '..']).to eq('i')
    end

    xit 'can convert braille j to j' do
      english_msg = NightReader.new
      expect(['.0', '0.', '..']).to eq('j')
    end

    xit 'can convert braille k to k' do
      english_msg = NightReader.new
      expect(['0.', '..', '0.']).to eq('k')
    end

    xit 'can convert braille l to l' do
      english_msg = NightReader.new
      expect(['0.', '0.', '0.']).to eq('l')
    end

    xit 'can convert braille m to m' do
      english_msg = NightReader.new
      expect(['00', '..', '0.']).to eq('m')
    end

    xit 'can convert braille n to n' do
      english_msg = NightReader.new
      expect(['00', '.0', '0.']).to eq('n')
    end

    xit 'can convert braille o to o' do
      english_msg = NightReader.new
      expect(['0.', '.0', '0.']).to eq('o')
    end

    xit 'can convert braille p to p' do
      english_msg = NightReader.new
      expect(['00', '0.', '0.']).to eq('p')
    end

    xit 'can convert braille q to q' do
      english_msg = NightReader.new
      expect(['00', '00', '0.']).to eq('q')
    end

    xit 'can convert braille r to r' do
      english_msg = NightReader.new
      expect(['0.', '00', '0.']).to eq('r')
    end

    xit 'can convert braille s to s' do
      english_msg = NightReader.new
      expect(['.0', '0.', '0.']).to eq('s')
    end

    xit 'can convert braille t to t' do
      english_msg = NightReader.new
      expect(['.0', '00', '0.']).to eq('t')
    end

    xit 'can convert braille u to u' do
      english_msg = NightReader.new
      expect(['0.', '..', '00']).to eq('u')
    end

    xit 'can convert braille v to v' do
      english_msg = NightReader.new
      expect(['0.', '0.', '00']).to eq('v')
    end

    xit 'can convert braille w to w' do
      english_msg = NightReader.new
      expect(['.0', '00', '.0']).to eq('w')
    end

    xit 'can convert braille x to x' do
      english_msg = NightReader.new
      expect(['00', '..', '00']).to eq('x')
    end

    xit 'can convert braille y to y' do
      english_msg = NightReader.new
      expect(['00', '.0', '00']).to eq('y')
    end

    xit 'can convert braille z to z' do
      english_msg = NightReader.new
      expect(['0.', '.0', '00']).to eq('z')
    end

    xit 'can convert braille space to space' do
      english_msg = NightReader.new
      expect(['..', '..', '..']).to eq(' ')
    end

    xit 'can convert braille the to the' do
      english_msg = NightReader.new
      expect(['.0', '00', '0.'], ['0.', '00', '..'], ['0.', '.0', '..']).to eq('the')
    end
  end
end