class SlotGame
  def play_slot
    result = []
    #3回繰り返す
    3.times do
      #rand関数でランダムに3回値を生成して配列resultへ代入。
      result << rand(0..9)
    end
    #.joinメソッドで配列に含まれる値を一続きに表示させる。
    puts "スロットゲームの結果は#{result.join}です！"
    
    #3つの数字が揃っているか判断させている。
    if result[0] == resulut[1] && resulut[0] == result[2]
      puts "おめでとうございます！"
    else
      puts  "残念でした〜"
    end
  end
end