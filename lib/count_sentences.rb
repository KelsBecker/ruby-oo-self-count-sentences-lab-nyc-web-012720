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
      string_array = self.split
      count = 0

      if string_array.each do |word|
        last_element = word.length - 1
        if word[last_element] == "." or
           word[last_element] == "!" or 
           word[last_element] == "?"
           count += 1
        end
       end
      return count
     end
    end
end