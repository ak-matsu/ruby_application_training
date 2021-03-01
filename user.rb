#購入する人 購入したい商品を決めて、お金を投入する。
class User
  def initialize(money)
    @money  = money
  end
  
  def money
    @money
  end

  def choose_drink
    gets.to_i
  end
end