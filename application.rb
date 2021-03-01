require "./drink"
require "./vending_machine"
require "./user"

#このapplication.rbファイルで全てのファイルを読み込みさせます。
#自販機で必要な3つのクラスを定義

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
#投入金額をユーザーで入力
money = gets.to_i

#Userクラスのインスタンスを生成して変数userに代入。
user = User.new(money)

#VendingMachineクラスに定義した、payメソッドを呼び出す。
vending_machine.pay(user)