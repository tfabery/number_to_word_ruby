class Fixnum
  define_method(:num_to_word) do
    num_hash_ones = {0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine'}
    num_hash_tens = {10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen', 1 => 'ten', 2 => 'twenty', 3 => 'thirty', 4 => 'forty', 5 => 'fifty', 6 => 'sixty', 7 => 'seventy', 8 => 'eighty', 9 => 'ninety'}
    result = []
    places = ['', 'thousand', 'million', 'billion', 'trillion', 'quadrillion']
    new_num = self
    num_array = []
    while new_num > 0 do
      num_array.push(new_num.%(1000))
      new_num = new_num./(1000)
    end
    num_array.each_index do |idx|
      word = []
      num = num_array[idx]
      while num >= 100 do
        word.push(num_hash_ones[num./(100)] + " hundred")
        num = num.%(100)
      end
      while num > 19 do
        word.push(num_hash_tens[num./(10)])
        num = num.%(10)
      end
      while num >= 10 do
        word.push(num_hash_tens[num])
        num = 0
      end
      while num > 0 do
        word.push(num_hash_ones[num])
        num = 0
      end
      word.push(places[idx])
      result.push(word.join(' '))
    end
    result_string = result.reverse.join(' ').rstrip
  end
end
