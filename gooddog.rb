require "pp"
# class GoodDog
#     def initialize(name)
#         @name = name        
#     end
#     attr_accessor :name
#     # def get_name  #(getter method)
#     #     @name
#     # end

#     # def set_name=(name)
#     # @name = name
#     # end


#     def speak
#         "#{name} says Arf!"
#     end
# end

# sparky = GoodDog.new('Sparky')

# sparky.name = "spartacus"
# sparky.name = ('ciao')
# puts sparky.speak
class MyCar
  def initialize(year,color,model)
      @year = year
      @color = color
      @model = model
      @speed = 0
  end
    def self.gas_mileage(gallons,miles)
        puts "you have done #{miles / gallons}  miles per gallong "
    end
    def to_s
        "my car is a #{color}, #{year}, #{model}"
    end
    def speed 
        @speed
    end
    attr_accessor :color, :model
    

    attr_reader :year
    def speed_up
        @speed += 1
        p "the current speed is #{@speed}"
    end
    def brake
        @speed -= 1
        p "go slow diminish the speed "
    end
    def shut_off
        @speed = 0
        p "lets go home"
    end
    def spray_paint(color)
        @model = color  # con @ lo prende se noin lo uso imposta nuova variabile se uso self invece va anche senza at
    end
end

red_car = MyCar.new(1989, 'red', 'x5')

MyCar.gas_mileage(15,400)

puts red_car

# CLASS METHODS 

# HOW TO DEFINE A CLASS METHOD

def self.what_am_i
    "I'm a goodDog class!"
end