require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    count = 0
    array = self.split(/[?.!]/)
    array.delete("")
    array.each do |string|
      if sentence? || question? || exclamation?
        count += 1
      end
    end
    count
  end
end