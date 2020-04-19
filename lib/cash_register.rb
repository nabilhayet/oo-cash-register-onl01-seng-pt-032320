require 'pry'
class CashRegister 
attr_accessor :total, :discount

  def initialize(discounts=0)
    @total =0
    @discount=discounts
    @items=[]
  end
  
  def total 
    @total 
  end 
  
  def add_item(title,price,quantity=1)
    @total=total+price*quantity
      quantity.times do 
    @items << title
      end 
  end 
  
  def apply_discount
    if discount!=0 
      @total=total-(total*discount/100)
      "After the discount, the total comes to $#{total}."
    else 
      "There is no discount to apply."
    end 
  end
  
  def items 
    @items
  end
  
  def void_last_transaction 
    @items.pop 
    if @items.size ==0 
      @total=0
  end
end 
