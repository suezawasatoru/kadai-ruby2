class Janken_attimuitehoi

def janken

puts "じゃんけん..."

while true

  puts "0(グー)1(チョキ)2(パー)3(戦わない)"

  player_hand = gets.to_i
  type_hand = ["グー","チョキ","パー"]
  program_hand = rand(3) 

  if player_hand == program_hand
    case_pattern = "パターンA" 
  elsif player_hand == 0 && program_hand == 1 || player_hand == 1 && program_hand == 2 || player_hand == 2 && program_hand == 0
    case_pattern = "パターンB"
  elsif player_hand == 0 && program_hand == 2 || player_hand == 1 && program_hand == 0 || player_hand == 2 && program_hand == 1
    case_pattern = "パターンC" 
  elsif player_hand == 3
    case_pattern = "パターンD"
  elsif player_hand != 0 && player_hand != 1 && player_hand != 2 
    case_pattern = "パターンE"
  end

    case case_pattern
    when "パターンA"
      puts "あなた:#{type_hand[player_hand]}"
      puts "相手:#{type_hand[program_hand]}"
      puts "あいこで..."
      redo
    when "パターンB"
      puts "あなた:#{type_hand[player_hand]}"
      puts "相手:#{type_hand[program_hand]}"
      attimuitehoi_myturn
      break
    when "パターンC"
      puts "あなた:#{type_hand[player_hand]}"
      puts "相手:#{type_hand[program_hand]}"
      attimuitehoi_programturn
      break
    when "パターンD"
      puts "キャンセルされました"
      break
    when "パターンE"
      puts "error"
      redo
    end
end   
end

def attimuitehoi_myturn

  puts "あなた:あっち向いて..."
  puts "0(上)1(右)2(下)3(左)"

  player_hand = gets.to_i
  type_hand = ["上","右","下","左"]
  program_hand = rand(4) 
  
  if player_hand == program_hand
    case_pattern = "パターンA" 
  elsif player_hand != 0 && player_hand != 1 && player_hand != 2 && player_hand != 3
    case_pattern = "パターンB"
  else
    case_pattern = "パターンC"
  end

    case case_pattern
    when "パターンA"
      puts "あなた:#{type_hand[player_hand]}"
      puts "相手:#{type_hand[program_hand]}"
      puts "あなたの勝ちです"
    when "パターンB"
      puts "error"
    when "パターンC"
      puts "あなた:#{type_hand[player_hand]}"
      puts "相手:#{type_hand[program_hand]}"
      janken
    end
end

def attimuitehoi_programturn

  puts "相手:あっち向いて..."
  puts "0(上)1(右)2(下)3(左)"

  player_hand = gets.to_i
  type_hand = ["上","右","下","左"]
  program_hand = rand(4) 

  if player_hand == program_hand
    case_pattern = "パターンA" 
  elsif player_hand != 0 && player_hand != 1 && player_hand != 2 && player_hand != 3
    case_pattern = "パターンB"
  else
    case_pattern = "パターンC"
  end

    case case_pattern
    when "パターンA"
      puts "あなた:#{type_hand[player_hand]}"
      puts "相手:#{type_hand[program_hand]}"
      puts "あなたの負けです"
    when "パターンB"
      puts "error"
    when "パターンC"
      puts "あなた:#{type_hand[player_hand]}"
      puts "相手:#{type_hand[program_hand]}"
      janken
    end
end
end

method1 = Janken_attimuitehoi.new()
method1.janken()

