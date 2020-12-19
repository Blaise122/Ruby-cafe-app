# require 'tty-prompt'

# class Quiz
#     attr_accessor :prompt, :answer
#     def initialize(prompt, answer)
#         @prompt = prompt
#         @answer = answer
#     end
# end

# p1 = 
# p2 =
# p3 =
# p4 =
# p5 = 
# p6 =
# p7 =
# p8 =
# p9 =


# questions = [
#     question.new(p1, )
#     question.new(p2, )
#     question.new(p3, )
#     question.new(p4, )
#     question.new(p5, )
#     question.new(p6, )
#     question.new(p7, )
#     question.new(p8, )
#     question.new(p9, )
# ]


# def run_test(questions)
#     puts
#     puts HEADER_LINE
#     puts "Take a Quiz 🌳".center(HEADER_LENGTH)
#     puts HEADER_LINE
#     puts
#     answer = ""
#     score = 0
#     for question in questions
#         puts question.prompt
#         answer = get.chomp()
#         if answer == question.answer
#             score += 1
#         end
#     end
#     puts ("you got" + score + "/" + questions.length())
# end