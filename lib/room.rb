class Room
  attr_reader :category, :paint

  def initialize(category, length = 10, width)
    @category = category
    @length = length
    @width = width
    @paint = paint
  end

  def area
    @length.to_i * @width.to_i
  end

  def is_painted?
    return true if @paint
    false
  end

end
