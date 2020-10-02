require 'pry'

class Word
  attr_reader :title, :id

  @@words = {}
  @@total_rows = 0

  def initialize (attributes)
    @title = attributes.fetch(:title)
    @id = attributes.fetch(:id) || @@total_rows += 1
  end

  def self.all
    @@words.values()
  end

  def self.clear
    @@words = {}
    @@total_rows = 0
  end

  def save
    @@words[self.id] = Word.new({:title => self.title, :id => self.id})
  end
end