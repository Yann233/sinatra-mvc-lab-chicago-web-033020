class PigLatinizer

  attr_reader :word


    def piglatin(word)
      if word[/\A[aeiou]/i]
        word + 'ay'
      else
        word[1..-1] + word[0] + 'ay'
      end
    end
