require('word_to_number')
require('rspec')

describe('String#word_to_num') do
  it "returns number for single digit word representation of a number" do
    expect('five'.word_to_num()).to(eq(5))
  end
  it "returns number for word representation of a number less than twenty" do
    expect('fifteen'.word_to_num()).to(eq(15))
  end
  it "returns number for word representation of a number less than one hundred" do
    expect('twenty'.word_to_num()).to(eq(20))
  end
  it "returns number for word representation of a number less than one hundred" do
    expect('twenty five'.word_to_num()).to(eq(25))
  end
  it "returns number for word representation of one hundred" do
    expect('one hundred'.word_to_num()).to(eq(100))
  end
  it "returns number for word representation of a number less than one thousand" do
    expect('one hundred eight'.word_to_num()).to(eq(108))
  end
  it "returns number for word representation of a number less than one thousand" do
    expect('one hundred twenty two'.word_to_num()).to(eq(122))
  end
  it "returns number for word representation of a number less than ten thousand" do
    expect('two thousand one hundred twenty two'.word_to_num()).to(eq(2122))
  end
  it "returns number for word representation of a number less than one hundred thousand" do
    expect('fifty two thousand one hundred twenty two'.word_to_num()).to(eq(52122))
  end
end
