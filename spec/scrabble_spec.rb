require('rspec')
require('scrabble.rb')

describe('string#scrabble') do

  it("returns a scrabble score for a letter") do
    word = Word.new("spaghetti")
    expect(word.scrabbler).to(eq(15))
  end

  it("returns a scrabble score for a letter") do
    word = Word.new("a")
    expect(word.scrabbler).to(eq(1))
  end

  it("returns a scrabble score for a letter") do
    word = Word.new("Xylophone")
    expect(word.scrabbler).to(eq(24))
  end
  
end
