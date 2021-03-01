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

  def pay(user)
    puts "商品を選んでください"
    #Userクラスに定義したchoose_drinkメソッドを呼び出しています。
    chosen_drink = user.choose_drink

    #「ユーザーの投入金額」と「選ばれた商品の金額」の差分を計算して、
    #その結果（お釣り）を変数changeに代入しています。
    change = user.money - self.drinks[chosen_drink].fee
    if change >= 0
      puts "ご利用ありがとうございました！お釣りは#{change}円です。"
    else
      puts "投入金額が足りません。"
    end
  end

end