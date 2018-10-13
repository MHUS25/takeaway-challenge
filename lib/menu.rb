class Menu

  attr_reader :items

  def initialize
    @items = { "Steak": 15.00,
      "Lasanga": 8.00,
      "Linguine": 9.00,
      "Pizza": 7.00,
      "Salmon": 14.00
    }
  end

  def list_menu
    items.each do |key, value|
    puts "#{key} : £#{value}"
  end
  end

end
