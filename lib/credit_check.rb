class CreditCheck

  attr_reader :number

  def initialize(number)
    @number = number.to_s
  end

  def length
    number.length
  end

  def validation
    if length == 16
      "Valid"
    elsif length == 15
      "Valid"
    else
      "Invalid"
    end
  end

  def every_even
    index = 0
    numbers = number.split("")
    while index < 16
      if index.even?
        numbers[index] = numbers[index].to_i
      end
      if index.odd?
        numbers[index] = numbers[index].to_i * 2
      end
      index += 1
    end
    numbers
  end

  def every_odd
    index = 0
    numbers = number.split("")
    while index < 15
      if index.odd?
        numbers[index] = numbers[index].to_i
      end
      if index.even?
        numbers[index] = numbers[index].to_i * 2
      end
      index += 1
    end
    numbers
  end
end
