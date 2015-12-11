class MarkovChainGenerator
  def initialize(text)
    @text = text
    @words = text.split
    @frequencies = {}
  end

  def find_patterns
    @words.each_with_index do |word, index|
      if index != (@words.length - 1) && index != (@words.length - 2)
        if !@frequencies.include?(word)
          frequencies[word] = {}
          frequencies[word][@words[index + 1]] = 1
        else
          frequencies[word][@words[index + 1]] += 1
        end
      end
    end
  end

end
