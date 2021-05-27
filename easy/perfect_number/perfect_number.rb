class PerfectNumber
  def self.classify(num)
    raise StandardError, "No negative numbers" if num < 1
    divisors = find_divisors(num)
    case
    when divisors.sum > num
      'abundant'
    when divisors.sum < num
      'deficient'
    else
      'perfect'
    end
  end

  private

  def self.find_divisors(num)
    divisors = [1]
    1.upto(num/2) do |mult1|
      mult1.upto(num/2) do |mult2|
        divisors << mult1 << mult2 if (mult1 * mult2) == num
        break if (mult1 * mult2) > num
      end
    end

    divisors.uniq.sort
  end
end
