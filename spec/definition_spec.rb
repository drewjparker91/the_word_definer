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

end

