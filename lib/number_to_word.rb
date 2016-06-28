require('pry')

class Fixnum
  define_method(:num_to_word) do
    num_hash_ones = {0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine'}
    num_hash_tens = {10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen', 2 => 'twenty', 3 => 'thirty', 4 => 'forty', 5 => 'fifty', 6 => 'sixty', 7 => 'seventy', 8 => 'eighty', 9 => 'ninety'}
    word = ''
    new_num = self
    # binding.pry()
    while new_num > 1000 do
      word = num_hash_ones[new_num./(1000)] + " thousand "
      new_num = new_num.%(1000)
    end
    while new_num > 100 do
      word = word + num_hash_ones[new_num./(100)] + " hundred "
      new_num = new_num.%(100)
    end
    while new_num > 19 do
      word = word + num_hash_tens[new_num./(10)] + " "
      new_num = new_num.%(10)
    end
    while new_num > 10 do
      word = word + num_hash_tens[new_num]
      new_num = 0
    end
    while new_num > 0 do
      word = word + num_hash_ones[new_num]
      new_num = 0
    end

    # if self < 10
    #   word = num_hash_ones[self]
    # elsif self <= 20
    #   word = num_hash_tens[self]
    # elsif self < 100
    #   word = num_hash_tens[self./(10)] + ' ' + num_hash_ones[self.%(10)]
    # elsif self < 1000
    #   word = num_hash_ones[self./(100)] + ' hundred and ' +  num_hash_tens[self.%(100)./(10)] + ' ' + num_hash_ones[self.%(10)]
    # elsif self < 1000000
    #
    # end
    word
  end
end
