 puts "enemy「勝負しよう！【じゃんけん】でな！」"
 sleep 0.5

point = 0
first_battle = true
second_battle = true

while first_battle do

  puts "enemy「最初はグー、じゃんけん・・・」"
  
  sleep 0.5
  
  puts "(Tips:以下の数値を入力してください)"
  
  
  puts "[0]グー\n[1]チョキ\n[2]パー"
  
    
    player_hand = gets.to_i
    program_hand = rand(3)
    
    if player_hand <= 2 && player_hand >=0
      janken_name = ["グー","チョキ","パー"]
    else
      janken_name = "謎の手"
    end
  
  if player_hand <= 2 && player_hand >=0
    puts "playerは#{janken_name[player_hand]}を出した！"
    sleep 1
    puts "enemyは#{janken_name[program_hand]}だった！"
    sleep 1
  else
    puts "playerは#{janken_name}を出した！"
    sleep 1
  end
  
  if player_hand == program_hand
    puts "Draw!"
    sleep 1
    puts "enemy「もう一度だ！」"
    sleep 1
    
  elsif (player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    puts "You Win!!!"
    first_battle = false
    point += 1
    sleep 1
  elsif (player_hand == 0 && program_hand == 2)||(player_hand == 1 && program_hand == 0)||(player_hand == 2 && program_hand == 1)
    puts "You Lose"
    first_battle = false
    sleep 1
  else
    puts "enemy「なんだその手は？グーかチョキかパーを出したまえ！」"
    sleep 0.5
    puts "enemy「もう一度だ！」"
    sleep 1
  end

end


if point ==1
  puts "enemy「くそっ！」"
else
  puts "enemy「私の勝ちだ！」"
end


 sleep 0.5
 
puts "enemy「・・・もう一回、じゃんけんしようではないか。」"
   sleep 0.5
puts "enemy「・・・・・・。」"
 sleep 0.5
puts "enemy「予告しよう。私は【グー】を出す。・・・いくぞッ！」"
 sleep 0.5
 
while second_battle do

  puts "enemy「最初はグー、じゃんけん・・・」"
  
  sleep 0.5
  

  
  
  puts "[0]グー\n[1]チョキ\n[2]パー"
  
    
    player_hand2 = gets.to_i
    
    paper_or_scissor = [1,2]
    program_hand2 = paper_or_scissor[rand(2)]
    
  
    
    if player_hand2 <= 2 && player_hand2 >=0
      janken_name2 = ["グー","チョキ","パー"]
    else
      janken_name2 = "謎の手"
    end
  
  if player_hand2 <= 2 && player_hand2 >=0
    puts "playerは#{janken_name2[player_hand2]}を出した！"
    sleep 1
    puts "enemyは#{janken_name2[program_hand2]}だった！"
    sleep 1
  else
    puts "playerは#{janken_name2}を出した！"
    sleep 1
  end
  
  if player_hand2 == program_hand2
    puts "Draw!"
    sleep 1
    puts "enemy「もう一度だ！」"
    sleep 1
    
  elsif (player_hand2 == 0 && program_hand2 == 1)||(player_hand2 == 1 && program_hand2 == 2)||(player_hand2 == 2 && program_hand2 == 0)
    puts "You Win!!!"
    second_battle = false
    point += 1
    sleep 1
     
    
  elsif (player_hand2 == 0 && program_hand2 == 2)||(player_hand2 == 1 && program_hand2 == 0)||(player_hand2 == 2 && program_hand2 == 1)
    puts "You Lose"
    second_battle = false
    sleep 1
  else
    puts "enemy「なんだその手は？グーかチョキかパーを出したまえ！」"
    sleep 0.5
    puts "enemy「もう一度だ！」"
    sleep 1
  end

end

if point == 2
  puts "enemy「2連敗だと・・・」"
  sleep 1
  puts "RESULT【2 wins】"
  puts "GAME CLEAR!"
  
elsif point == 1
  puts "enemy「引き分けか・・・」"
  sleep 1
  puts "RESULT【1 win, 1 loss】"
  puts "GAME OVER"
else
  puts "enemy「私の完全勝利だ！」"
  sleep 1
  puts "RESULT【2 losses】"
  puts "GAME OVER"
end

