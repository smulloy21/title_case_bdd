class String
  define_method(:find_and_replace) do |look_for, replace_with|
    old_words = self.split(" ")
    new_words = []
    old_words.each() do |word|
      if word == look_for
        new_words.push(replace_with)
      else
        new_words.push(word)
      end
    end
    new_words = new_words.join(" ")
  end
end
