# Problem Statement
# A restaurant has incoming orders for which you need to compute the costs
# based on the menu.
#
# You might get multiple orders at times.
#
# Examples:
# if the order is {:rice => 1, :noodles => 1}, and the menu is
#   {:rice => 3, :noodles => 2}, then the cost is 5.
#
# If the orders are {:rice => 1, :noodles => 1} and {:rice => 2, :noodles => 2}
#  and the menu is {:rice => 3, :noodles => 2}, then the cost is 15.
#
#  https://rubymonk.com/learning/books/1-ruby-primer/problems/155-restaurant

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
