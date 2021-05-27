require 'pry'

# class Series
#   def initialize(integer_string)
#     @number = integer_string
#   end

#   def slices(length)
#     raise ArgumentError, "Require smaller argument" if length > @number.size
#     digits = @number
#     series_arr = Array.new
#     0.upto(digits.size - length) do |first|
#       first.upto(first + (length - 1)) do |last|
#         add_to_arr(series_arr, digits[last].to_i, first)
#       end
#     end

#     series_arr
#   end

#   private

#   def add_to_arr(arr, value, index)
#     if !arr[index].is_a?(Array)
#       arr[index] = [value]
#     else
#       arr[index] << value
#     end
#   end
# end

class Series
  def initialize(integer_string)
    @number = integer_string
  end

  def slices(length)
    raise ArgumentError, "Require smaller argument" if length > @number.size
    digits = @number
    series_arr = Array.new

    0.upto(digits.size - length) do |start_idx|
      series_arr << digits.slice(start_idx, length).chars.map(&:to_i)
    end

    series_arr
  end
end
