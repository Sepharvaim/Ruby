# class Questions 
# 	attr_accessor :prompt, :answer
# 	def initialize(prompt, answer)
# 		@prompt = prompt
# 		@answer = answer
# 	end
# end

# p1 = "What color are apples?\n(a)red\n(b)orange\n(c)purple"
# p2 = "What color are bananas?\n(a)pink\n(b)black\n(c)yellow"
# p3 = "What color are pears?\n(a)yellow\n(b)green\n(c)brown"

# questions = [
# 	Questions.new(p1, "a"),
# 	Questions.new(p2, "c"),
# 	Questions.new(p3, "b"),

# ]

# def run_test(questions)
# 	answer = ""
# 	score = 0 
# 	for question in questions 
# 		puts question.prompt
# 		answer = gets.chomp()
# 		if answer == question.answer
# 			score += 1
# 		end
# 	end
# 	puts "you got #{score.to_s} \\ out of #{questions.length.to_s}"
# end

# run_test(questions)


module MathHelpers
	def exponent(num, exp)
		return num**exp
	end
end

class Calculator 
	include MathHelpers
	def square_root(num)
		exponent(num, 0.5) 
		print local_variables
	end
end 

numero = Calculator.new()

puts numero.exponent(3,3)
puts numero.square_root(81)

p Object.class_variables