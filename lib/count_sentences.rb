require 'pry'

class String

  def sentence?
    end_with?(".")
    #binding.pry
  end

  def question?
    end_with?("?")
  end
  def exclamation?
    end_with?("!")
  end

  #count_sentences
    # returns the number of sentences in a string (FAILED - 1)
    # returns zero if there are no sentences in a string (FAILED - 2)
    # returns the number of sentences in a complex string (FAILED - 3)

    #count the periods, exclamation points and question marks
    #puts the # of periods || ? ||!

  def count_sentences
#     n = 0
#     self.split(" ").each do |word|
#       if word.include?("."); word.include?("!"); word.include?("?")
#         n+=1
#       elsif !word.include?("."); word.include?("!"); word.include?("?")
#         return "0"
#       end
#     end
#     n+1
#   #   binding.pry
#   end
# end

  sentence = self.split(/[.?!]/)
  sentence.delete_if {|word| word.length == 0}
  sentence.count
  #binding.pry

  end
end
