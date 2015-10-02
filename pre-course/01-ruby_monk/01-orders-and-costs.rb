class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    sum = 0
    orders.each do |order|
      order.each do |item, quantity|
        sum += quantity * @menu[item]
      end
    end
  sum
  end
end

subway = Restaurant.new({:club => 12, :blt => 14})
puts subway.cost ({:club => 2, :blt => 0})
