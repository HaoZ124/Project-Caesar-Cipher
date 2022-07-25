require 'spec_helper'
require_relative '../caesar_cipher'

RSpec.describe 'caesar cipher project' do

  describe 'works with single letters' do

    it 'works with single letters' do
      expect(caesar_cipher('A', 1)).to eq('B')
    end
  end

  describe 'works with words' do

    it 'works with words' do
      expect(caesar_cipher('Aaa', 1)).to eq('Bbb')
    end
  end
  
  describe 'works with phrases' do
    
    # remove the 'x' from the line below to unskip the test
    it 'works with phrases' do
        expect(caesar_cipher('Hello, World!', 5)).to eq('Mjqqt, Btwqi!')
    end
  end

  describe 'works with negative shift' do

    it 'works with negative shift' do
        expect(caesar_cipher('Mjqqt, Btwqi!', -5)).to eq('Hello, World!')
    end
  end

  describe 'wraps' do

    it 'wraps' do
        expect(caesar_cipher('Z', 1)).to eq('A')
    end
  end

  describe 'works with large shift factors' do

    it 'works with large shift factors' do
        expect(caesar_cipher('Hello, World!', 75)).to eq('Ebiil, Tloia!')
    end
  end

  describe 'works with large negative shift factors' do

    it 'works with large negative shift factors' do
        expect(caesar_cipher('Hello, World!', -29)).to eq('Ebiil, Tloia!')
    end
  end
end
