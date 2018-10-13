# require 'menu'
# require 'order'

class Takeaway

  attr_reader :menu, :order

  def initialize(menu = Menu.new, order = Order.new)
    @menu = menu
    @order = order
  end

  def print_menu
    @menu.list_menu
  end

  def add_to_order(item, quantity = 1)
    raise "Item not on menu!" if available(item) == false
    @order.add_to_basket(item, quantity)
    @order.add_to_total(get_price(item), quantity)
  end

  def order_summary
    @order.order_summary
  end

  def basket
    @order.basket
  end

  def total
    @order.total
  end

  def get_price(item)
    @menu.get_price(item)
  end

  def available(item)
    menu.items.has_key?(item)
  end

end