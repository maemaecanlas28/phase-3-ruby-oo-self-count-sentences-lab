require 'pry'

class String

  def sentence?
    return self.end_with?(".")
  end

  def question?
    return self.end_with?("?")
  end

  def exclamation?
    return self.end_with?("!")
  end

  def count_sentences
    return self.split(/\!|\?|\./).count {|str| str != ""}
  end
end

puts "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences