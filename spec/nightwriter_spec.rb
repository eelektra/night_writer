require './spec/spec_helper'
require './lib/nightwriter'

describe NightWriter do
  describe 'initialize' do
    it 'exists' do
      english_msg = NightWriter.new
      expect(english_msg).to be_a(NightWriter)
    end
  end
end