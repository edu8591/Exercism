class Series
  private
  attr_reader :digits

  public
  def initialize(digits)
    @digits = digits.chars
  end

  def slices(size)
    raise ArgumentError if size > digits.length

    digits.each_cons(size).map(&:join)
  end
end
