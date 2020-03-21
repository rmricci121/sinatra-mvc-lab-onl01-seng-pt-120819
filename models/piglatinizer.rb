require 'pry'
class PigLatinizer 

    attr_reader :text

    def consonant?(letter)
        !letter.match(/[aeiouAEIOU]/)
    end


    def piglatinize(sentence)
        sentence.gsub('.','').split(' ').collect do |word|
             piglatinize_word(word)
           end.compact.join(' ')
        end

    def piglatinize_word(text)
        
        if !consonant?(text[0])
            text = text + "way"
        elsif  consonant?(text[0]) && consonant?(text[1]) && consonant?(text[2])
            text = text.slice(3..-1) + text.slice(0,3) + "ay"
        elsif consonant?(text[0]) && consonant?(text[1])
            text = text.slice(2..-1) + text.slice(0,2) + "ay"
        else 
            #binding.pry
            text = text.slice(1..-1) + text.slice(0) + "ay"
        end
        text
    end
end