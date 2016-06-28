require('pry')

class Fixnum
  define_method(:num_to_word) do
    num_hash_ones = {0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine'}
    num_hash_tens = {10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen', 2 => 'twenty', 3 => 'thirty', 4 => 'forty', 5 => 'fifty', 6 => 'sixty', 7 => 'seventy', 8 => 'eighty', 9 => 'ninety'}
    word = ''
    if self < 10
      word = num_hash_ones[self]
    elsif self <= 20
      word = num_hash_tens[self]
    elsif self < 100
      word = num_hash_tens[self./(10)] + ' ' + num_hash_ones[self.%(10)]
    end
    word
  end
end
