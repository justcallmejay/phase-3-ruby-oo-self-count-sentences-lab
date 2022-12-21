require 'pry'

class String
  
  def sentence?
    if self.end_with?(".")
      return true
    else
      return false 
  end
end

def question?
  if self.end_with?("?")
    return true
    else
      return false
    end
  end
  
  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end
  
  def count_sentences
    sente = self.split(/[.?!+]/)
    sente.reject!(&:empty?)
    sente.count
  #   num = 0
  #   words = self.split(" ")
  #   return words.length
    
  #   words.collect do |name|
  #     # puts name
  #     name.end_with?("." || "!" || "?").count
  #   end
  # return num
end

end
binding.pry

# s1 = String.new('rose', 3.00)

word = String.new("This, well, is a sentence. This is too!! And so is this, I think? Woo...")
word.count_sentences