require 'rspec'
require 'word'

describe '#Word' do
  before(:each) do
    Word.clear()
  end

  describe ('.all') do
    it ('returns an empty array when there are no words') do
      expect(Word.all).to(eq([]))
    end
  end

  describe ('#save') do
    it("saves a word") do
      word = Word.new({:title => "Hello", :id => nil})
      word.save()
      expect(Word.all).to(eq([word]))
    end
  end

  describe ('#clear') do
    it("clears a word") do
      word = Word.new({:title => "Hello", :id => nil})
      word.save()
      Word.clear()
      expect(Word.all).to(eq([]))
    end
  end
end