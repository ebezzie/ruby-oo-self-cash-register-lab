class CashRegister
    attr_accessor :total, :items, :price, :discount
    def initialize(discount=0)
      @total = 0
      @discount = discount
      @items = []
      @price = []
    end
    def add_item(title, price, count = 1)
        @last_transation = price * count
        while count >= 1  
            @items.push(title)
            @total += price
            count = count - 1
        end
      @total
    end
    def apply_discount
      if discount > 0
        self.total -= (total * (discount * 0.01))
        return "After the discount, the total comes to $#{total.to_i}."
      end
      return "There is no discount to apply."
    end
    def void_last_transaction
        @items.pop()
        @total -= @last_transation
    end
  end