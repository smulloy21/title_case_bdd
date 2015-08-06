class String
  define_method(:title_case) do
    little_words = ["from", "the", "at", "to", "and", "in", "a", "an", "on", "of"]
    multi_words = self.downcase().split(" ")
    multi_words.each() do |word|
      if multi_words[0]==word
        word.capitalize!()
      else
        if little_words.include?(word)
        else
          word.capitalize!()
        end
      end
      word.sub!("Mcd", "McD")
      word.sub!("O'm", "O'M")
    end
    multi_words.join(" ")
  end
end
