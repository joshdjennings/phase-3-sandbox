require 'pry'
class Animal
    attr_accessor :name, :age, :species    
    @@all = []
    def initialize(args)
       args.each_key do |key, value|
          self.send("#{key}=", args[key])
       end
    end
   
    def self.all
        @@all
    end

    def self.method_builder(method_name)
        define_method(method_name){
            "hello world"
        }
    end
end

cat = {
    name: 'Rose', 
    age: 9,
    species: 'F.catus'
}
animal = Animal.new(cat)
Animal.method_builder('Hi')


binding.pry