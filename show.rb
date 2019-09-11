puts "Hello from Showlist::Show"
module ShowList
    class ShowList
    attr_accessor :name, :description


    def initialize(name, description)
        @name = name
        @description = description

    end
    @@all = []
def self.all
    @@all ||= self.load
