class House
  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  # def price
  #   @price.slice(0).to_i
  # end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    return true if @price.to_i > 500000
    false
  end

  def rooms_from_category(category)
    @rooms.find_all do |room|
      room.category == category
    end
  end

  def area
    @rooms.each do |room|
      area = room.length * room.width
    end
  end

  def details
    @price
    @address
  end
end
