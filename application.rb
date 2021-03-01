#自販機で必要な3つのクラスを定義
#Drink販売する飲み物 導入された飲み物を実態あるデータにする
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

#VendingMachine自販機 ユーザーに販売している商品を見せて、
#投入金額からお釣りを計算する
class VendingMachine
  def initialize(drinks)
    @drinks = drinks
  end

  def drinks
    @drinks
  end

  def show_drinks
    puts  "いらっしゃいませ、以下の商品を販売しています。"
    i = 0
    self.drinks.each  do  |drink|
      puts "【#{i}】#{drink.name}:  #{drink.fee}円"
      i += 1
    end
  end
end

#購入する人 購入したい商品を決めて、お金を投入する。
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

vending_machine = VendingMachine.new(drinks)
vending_machine.show_drinks