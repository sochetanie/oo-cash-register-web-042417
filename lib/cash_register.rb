require 'pry'

class CashRegister

  attr_accessor :total, :discount, :transactions

  def initialize(discount = nil)
  @total = 0
  @discount = discount
  @items = []
  end

  def add_item(title, price, qty=1)
    qty.times {items << title}
    self.total += (price * qty)
    self.transactions = price * qty
  end

  def transactions
    @transactions
  end

  def items
    @items
  end

  def apply_discount
    if discount == nil
      "There is no discount to apply."
    else
      self.total = self.total - (self.total * discount / 100)
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total = self.total - self.transactions
  end

end

