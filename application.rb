#自販機で必要な3つのクラスを定義
class Drink
  def initialize(name,fee)
    @name = name
    @fee = fee
  end

  def name
    @name
  end

  def fee
    @fee
    
  end
  
end

class VendingMachine
  
end

class User
  
end

puts "商品を用意してください"
drinks  = []
#3つのデータがdrinksの中に入るよう設定。
3.times do |i|
  puts "商品名を入力してください"
  drink_name  = gets.chomp
  puts "金額を入力してください"
  drink_fee = gets.to_i
  drinks << Drink.new(drink_name,drink_fee)
end

#最後に配列の中身を確認するため、puts drinksで出力
puts drinks