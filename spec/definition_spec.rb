require 'rspec'
require 'definition'

describe '#Definition' do
  before(:each) do
    Definition.clear()
  end

  describe ('.all') do
    it ('returns an empty array when there are no definitions') do
      expect(Definition.all).to(eq([]))
    end
  end

  describe ('#save') do
    it("saves a definition") do
      word = Definition.new({:body => "Hello", :id => nil})
      word.save()
      expect(Definition.all).to(eq([word]))
    end
  end

end

