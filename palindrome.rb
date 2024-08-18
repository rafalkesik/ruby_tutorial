module Palindrome 
    # Returns true for a palindrome, false otherwise.
    def palindrome?
        processed_content == processed_content.reverse
    end

    private
    
        # Processes the string for palindrome testing.
        def processor(string)
            string.downcase
        end

        # Returns contnt for palindrome testing.
        def processed_content
            processor(self)
        end
    
end

# Defines a Phrase class.
class String
    include Palindrome

    # Retunrs true for a string, which is empty or consists only of whitespace. Returns false otherwise.
    def blank?
    !!self.match(/\A\s*\z/)
    end
end

class Integer
    include Palindrome
end


# Defines a translated Phrase.
class TranslatedPhrase < String
    attr_accessor :translation

    def initialize(content, translation)
        super(content)
        @translation = translation
    end

    private

        # Processes the translation for palindrome testing.
        def processed_content
            processor(translation)
        end

end

