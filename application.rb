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
    #@drinksには3つのドリンク情報が含まれる
    @drinks = drinks
  end

  def drinks
    @drinks
  end

  #show_drinksメソッドで一覧表示にする。
  def show_drinks
    puts  "いらっしゃいませ、以下の商品を販売しています。"
    i = 0
    #self.はクラスメソッド
    #self.drinksの”self”は生成したインスタンス、
    #"drinks"は直前で定義したインスタンスメソッドであり、@drinksの情報を意味する。
    #self.drinksをしないと、同じクラス内（VendingMachine）で生成した@drinksを使うことができないから。
    self.drinks.each  do  |drink|
      puts "【#{i}】#{drink.name}:  #{drink.fee}円"
      i += 1
    end
  end
end

#購入する人 購入したい商品を決めて、お金を投入する。
class User
  def initialize(money)
    @money  = money
  end
  
  def money
    @money
  end
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

#VendingMachineクラスのインスタンスを生成。drinksへ3つの商品が格納され
#initializeメソッドへで生成した@drinksへ代入される。
vending_machine = VendingMachine.new(drinks)
#生成したインスタンスに対してshow_drinksメソッドを適用させる。
vending_machine.show_drinks

puts  "あなたはお客様です。投入金額を決めてください"
money = gets.to_i
user = User.new(money)