require 'pry'
class CashRegister 
attr_accessor :total, :discount

  def initialize(discounts=0)
    @total =0
    @discount=discounts
    @item=[]
  end
  
  def total 
    @total 
  end 
  
  def add_item(title,price,quantity=1)
    @item << title
    @total=total+price*quantity
  
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
    @item
  end
end 
