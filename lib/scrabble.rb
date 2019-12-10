class Word

  def initialize(word)
    @word = word
  end

  # def word
  #   @word
  # end

  def scrabble
    ((@word.scan(/[aeioulnrst]/i).length) +
    (@word.scan(/[dg]/i).length * 2) +
    (@word.scan(/[bcmp]/i).length * 3) +
    (@word.scan(/[fhvwy]/i).length * 4) +
    (@word.scan(/[k]/i).length * 5) +
    (@word.scan(/[jx]/i).length * 8) +
    (@word.scan(/[qz]/i).length * 10))
  end

  @@values = [[/[aeioulnrst]/i, 1], [/[dg]/i, 2], [/[bcmp]/i, 3], [/[fhvwy]/i, 4], [/[k]/i, 5], [/[jx]/i, 8], [/[qz]/i, 10]]
  def scrabbler(i = 0)
    temp = @word.scan(@@values[i][0]).length * @@values[i][1]
    (i == (@@values.length - 1)) ? (temp) : (temp + scrabbler(i+1))
  end

end
