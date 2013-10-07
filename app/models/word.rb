class Word < ActiveRecord::Base

  def self.anagrams_for(word)
     
    word_array = word.downcase.split(//).sort
    storage = Word.select {|word| word.words.downcase.split(//).sort == word_array}
   
    storage
  end
end
