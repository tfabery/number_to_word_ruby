require('pry')
class String
  define_method (:word_to_num) do
    num_hash_ones = {0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine'}
    num_hash_teens = {10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}
    num_hash_tens = {1 => 'ten', 2 => 'twenty', 3 => 'thirty', 4 => 'forty', 5 => 'fifty', 6 => 'sixty', 7 => 'seventy', 8 => 'eighty', 9 => 'ninety'}
    places_hash = {'hundred' => 100, 'thousand' => 1000, 'million' => 1000000, 'billion' => 1000000000}
    places = ['thousand', 'million', 'billion', 'trillion', 'quadrillion']
    word_array = self.scan(/\w+/)
    result_array = []
    result = 0
    word_array.each_index do |idx|
      if num_hash_ones.invert.include? word_array[idx] && word_array[idx + 1]
        binding.pry
        result += num_hash_ones.key(word_array[idx])
        result_array.push(result)
        result *= 0
      elsif num_hash_teens.invert.include? word_array[idx] && !word_array[idx + 1]
        result += num_hash_teens.key(word_array[idx])
        result_array.push(result)
        result *= 0
      elsif num_hash_ones.invert.include? word_array[idx]
        result += num_hash_ones.key(word_array[idx])
      elsif num_hash_teens.invert.include? word_array[idx]
        result += num_hash_teens.key(word_array[idx])
      elsif num_hash_tens.invert.include? word_array[idx]
        result += num_hash_tens.key(word_array[idx])*10
      elsif places_hash.include? word_array[idx]
        result_array.push(result *= places_hash[word_array[idx]])
        result *= 0
      end
    end
    final = 0
    result_array.each do |num|
      final += num
    end
    final
  end
end
