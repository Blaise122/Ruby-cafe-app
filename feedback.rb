# require_relative './headers'
# require 'tty-prompt'

# class Question
#     attr_accessor :prompt, :answer, :questions
#     def initialize(prompt, answer)
#         @prompt = prompt
#         @answer = answer
#     end
# end

# p1 = "How likely is it that you would come back?\n(a)Very Likely\n(b)Likely\n(c)Unlikely\n(d)Very Unlikely"
# p2 = "How Often Do You Dine with Us?\n(a) First-time customer\n(b)Infrequent diner\n(c)frequent client"
# p3 = "Did your food arrive within 30 minutes of placing your order?\n(a)Yes\n(b)No"
# p4 = "How did you feel about the speed of service?\n(a)Excellent\n(b)Good\n(c)Average\n(d)Dissatisfied"
# p5 = "How would you rate the overall experience?\n(a) Excellent\n(b)Good\n(c)Average\n(d)Dissatisfied"
# p6 = "What types of coffees do you typicall order at the cafe?\n(a)Latte\n(b)Espresso\n(c)Cappuccino\n(d)Flat White"
# p7 = "in addition to coffee, what food would you prefer to order?\n(a)Muffins\n(b)Panini/Sandwich\n(c)Doughnuts\n(d)Cake/Cookies"

# questions = [
#     Question.new(p1,["a", "b", "c", "d"]),
#     Question.new(p2,["a", "b", "c"]),
#     Question.new(p3,["a", "b"]),
#     Question.new(p4,["a", "b", "c", "d"]),
#     Question.new(p5,["a", "b", "c", "d"]),
#     Question.new(p6,["a", "b", "c", "d"]),
#     Question.new(p7,["a", "b", "c", "d"]) 
# ]


# def run_survey(questions)
#     puts
#     feedback_header
#     puts
#     answer = ""

#     for question in questions
#         puts question.prompt
#         answer = gets.chomp()
#         puts answer
#     end
#     puts " Thank you for your feedback"
# end