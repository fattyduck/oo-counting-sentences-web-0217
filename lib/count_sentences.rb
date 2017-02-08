require 'pry'

class String

  def sentence?
    self[self.length-1] == "."
  end

  def question?
    self[self.length-1] == "?"
  end

  def exclamation?
    self[self.length-1] == "!"
  end

  def count_sentences
    count = 0
    sentence_end = ["!", "?", "."]
    for i in 1...self.length
      count += 1 if sentence_end.include?(self[i]) && !sentence_end.include?(self[i-1])
    end
    count
  end
end
