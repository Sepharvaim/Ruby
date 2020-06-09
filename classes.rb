# def MyClass
#     def initialize(name)
#         #istance variable
#         @name = name
#     end
# end


# #istance class
# my_name = MyClass.new("Andrea") 
# pp my_name.name
# class Person 
#     def initialize(name)
#         @name = name
#         $var_my = 'ciao'
#     end
# end
# person = Person.new('Andrea')
# p $var_my

#module etc etc 
module Talk
    def speak(word)
    p "#{word}"
    end
end


class Person
    def initialize(name, age, health, strength)
        @name = name 
        @age = age
        @health = health
        @strength = strength
    end
    # attr_accessor :name, :age, :health, :strength
    # this is for only read  we can use attr_reader  aka  getter
    # def age
    #     @age
    # end

    # this is for write we can use attr_writer   aka setter
    # def age=(new_age)
    #     @age = new_age
    # end
    attr_writer :name # short if we want only change the var or attr_reader in we want only access
    def attack(enemy)
        p enemy
    end
    include Talk   
end

my_object = Person.new('andrea', 30, 100, 50)
p my_object.name = 'wewe'
# my_object.speak("ciao")
