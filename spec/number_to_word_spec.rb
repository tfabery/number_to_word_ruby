require('number_to_word')
require('rspec')

describe('Fixnum#num_to_word') do
  it("returns a word for a single digit") do
    expect(9.num_to_word()).to(eq('nine'))
  end
  it("returns a word for a number up to ten") do
    expect(10.num_to_word()).to(eq('ten'))
  end
  it("returns a word for a number up to twenty") do
    expect(18.num_to_word()).to(eq('eighteen'))
  end
  it("returns a word for a number less than one hundred") do
    expect(24.num_to_word()).to(eq('twenty four'))
  end
  it("returns a word for a number less than one thousand") do
    expect(678.num_to_word()).to(eq('six hundred seventy eight'))
  end
  it("returns a word for a thousand") do
    expect(1000.num_to_word()).to(eq('one thousand'))
  end
  it("returns a word for a number less than ten thousand") do
    expect(3746.num_to_word()).to(eq('three thousand seven hundred forty six'))
  end
  it("returns a word for ten thousand") do
    expect(10000.num_to_word()).to(eq('ten thousand'))
  end
  it("returns a word for a number less than one hundred thousand") do
    expect(83746.num_to_word()).to(eq('eighty three thousand seven hundred forty six'))
  end
  it("returns a word for a hundred thousand") do
    expect(100000.num_to_word()).to(eq('one hundred thousand'))
  end
  it("returns a word for a number less than one million") do
    expect(283746.num_to_word()).to(eq('two hundred eighty three thousand seven hundred forty six'))
  end
  it("returns a word for a number less than one billion") do
    expect(4283746.num_to_word()).to(eq('four million two hundred eighty three thousand seven hundred forty six'))
  end
  it("returns a word for a number less than one trillion") do
    expect(1245283746.num_to_word()).to(eq('one billion two hundred forty five million two hundred eighty three thousand seven hundred forty six'))
  end
  it("returns a word for a number less than one quadrillion") do
    expect(5612245283746.num_to_word()).to(eq('five trillion six hundred twelve billion two hundred forty five million two hundred eighty three thousand seven hundred forty six'))
  end
  it("returns a word for a number less than one quintillion") do
    expect(1005612245283746.num_to_word()).to(eq('one quadrillion five trillion six hundred twelve billion two hundred forty five million two hundred eighty three thousand seven hundred forty six'))
  end
end
