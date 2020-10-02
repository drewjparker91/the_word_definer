require 'pry'
  class Definition
    attr_accessor :body, :id

    @@definitions = {}
    @@total_rows = 0

    def initialize (attributes)
      @body = attributes.fetch(:body)
      @id = attributes.fetch(:id) || @@total_rows += 1
    end

    def self.all
      @@definitions.values()
    end
    
    def save
      @@definitions[self.id] = Definition.new({:body => self.body, :id => self.id})
      #maybe don't need :id=>self.id
    end

    def ==(definition_to_compare)
      self.body == message_to_compare.body() && self.id == message_to_compare.id
    end

    def self.clear
      @@definitions = {}
      @@total_rows = 0
    end

    def self.find(id)
      @@definitions[id]
    end

    def update_definitions(new_definition)
      @definition = new_definition
    end

    def delete
      @@definitions.delete(self.id)
    end

  end

