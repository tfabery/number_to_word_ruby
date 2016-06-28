require('number_to_word')
require('rspec')

describe('Fixnum#num_to_word') do
  it("returns a word for a single digit") do
    expect(9.num_to_word()).to(eq('nine'))
  end
  it("returns a word for a number up to twenty") do
    expect(18.num_to_word()).to(eq('eighteen'))
  end
end