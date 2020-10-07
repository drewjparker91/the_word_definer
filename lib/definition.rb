require 'pry'
  class Definition
    attr_reader :body, :id, :word_id
    attr_accessor :body, :id, :word_id

    @@definitions = {}
    @@total_rows = 0

    def initialize (attributes)
      @body = attributes.fetch(:body)
      @id = attributes.fetch(:id) || @@total_rows += 1
      @word_id = attributes.fetch(:word_id)
    end

    def self.all
      @@definitions.values()
    end
    
    def save
      @@definitions[self.id] = Definition.new({:body => self.body, :id => self.id, :word_id => self.word_id})
    end

    def ==(definition_to_compare)
      self.body == definition_to_compare.body() && self.id == definition_to_compare.id
    end

    def self.clear
      @@definitions = {}
      @@total_rows = 0
    end

    def self.find(id)
      @@definitions[id]
    end

    def update_body(body)
      @body = body
    end

    def delete
      @@definitions.delete(self.id)
    end

    def Word
      Word.find(self.word_id)
    end

    def self.find_by_word(wurd_id)
      definitions = []
      @@definitions.values.each do |definition|
        if definition.word_id == wurd_id
          definitions.push(definition)
        end
      end
      definitions
    end
  end


