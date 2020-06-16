
class PigLatinizer 

    attr_accessor :piglatinized_phrase

    def to_pig_latin(word)
       if word.downcase.index(/[aeiou]/) == 0 #if word starts with a vowel
            word + "way"
       else #word starts with a consonant
            first_vowel = word.index(/[aeiou]/) #finds first vowel
            move_to_back = word.slice!(0..first_vowel - 1) #permanantly changes word at the first vowel using slice!
            word + move_to_back + "ay" #completes the word...hopefully
       end 
    end 

    def piglatinize(phrase)
        arr = phrase.split(" ")
        @piglatinized_phrase = arr.collect{ |word| to_pig_latin(word)}.join(" ")
    end 
end 