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

  describe ('#find') do
    it("finds a definition by id") do
      definition1 = Definition.new({:body => "Hello", :id => nil})
      definition1.save()
      definition2 = Definition.new({:body => "World", :id => nil})
      definition2.save()
      expect(Definition.find(2)).to(eq(definition2))
    end
  end

  describe ('#==') do
    it("is the same definition if it has the same attributes as another definition") do
    definition1 = Definition.new({:body => "Hello", :id => 1})
    definition2 = Definition.new({:body => "Hello", :id => 1})
    expect(definition1).to(eq(definition2))
    end
  end

  describe ('#update_body') do
    it('updates a definition') do
      definition1 = Definition.new({:body => "Helo", :id => 1})
      definition1.save()
      definition1.update_body("Hello")
      expect(definition1.body).to(eq("Hello"))
    end
  end
end

