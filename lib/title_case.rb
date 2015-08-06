class String
  define_method(:title_case) do
    exempt_words = ["from", "the", "at", "to", "and"]
    multi_words = self.split(" ")
    multi_words.each() do |word|
      if multi_words[0]==word
        word.capitalize!()
      elsif exempt_words.include?(word)
        word.downcase!()
      else
        word.capitalize!()
      end
    end
    multi_words.join(" ")
  end
end
