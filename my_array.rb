class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    @array.count
  end

  def reverse
    @array.reverse
  end

  def max
    @array.max
  end

  def min
    @array.min
  end

  def desc
    @array.sort.reverse
  end

  def asc
    @array.sort
  end

  def odd
    @array.each { |val| @array.delete(val) if val.even? }
  end

  def multiple_to_three
    @array.each { |val| @array.delete(val) if val % 3 }
  end

  def uniq
    result = []
    @array.each { |val| result << val if result.count(val) == 0 }
    result
  end

  def devide_on_ten
    @array.map { |val| val / 10.0 }
  end

  def chars
    alphabet = ('a'..'z').to_a.map(&:to_sym)
    @array.map { |val| alphabet[val - 1] }
  end

  def switch
    max = @array.max
    min = @array.min
    @array[@array.index(max)],
    @array[@array.index(min)] = @array[@array.index(min)],
                                @array[@array.index(max)]
    @array
  end

  def before_min
    min = @array.min
    @array.map { |val| val if @array.index(val) < @array.index(min) }.compact
  end

  def three_smallest
    result = []
    3.times do
      result << @array.min
      @array.delete(@array.min)
    end
    result
  end
end
