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

  def ==(board_to_compare)   
    self.title == board_to_compare.title() && self.id == board_to_compare.id()
  end
  
  def self.find (id)
    @@words[id]
  end
  
  def update_title(new_title)
    @title = new_title
  end
  
  def delete
    @@words.delete(self.id)
  end
end