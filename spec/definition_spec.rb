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
      definition = Definition.new({:body => "Hello", :id => nil})
      definition.save()
      expect(Definition.all).to(eq([definition]))
    end
  end

  describe ('#clear') do
    it("clears a definition") do
      definition = Definition.new({:body => "Hello", :id => nil})
      definition.save()
      Definition.clear()
      expect(Definition.all).to(eq([]))
    end
  end
end

