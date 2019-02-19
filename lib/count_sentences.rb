require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    arr = self.split(/\b(.!?)\s|\b(.!?)\z/)
    arr.each do |item|
      if item == /(!,.?)/
        item.delete
      end
    end
    binding.pry
    arr.count
  end
end
