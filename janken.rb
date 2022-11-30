def janken
  jankens = [ "グー" , "チョキ" , "パー" , "戦わない" ]
  player_hand = jankens
  program_hand = rand(3)

  puts "じゃんけん..."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"

  player_hand = gets.to_i
  puts "ホイ！"

  puts "-----------------------------"

  puts "あなた:#{jankens[player_hand]}を出しました"
  puts "相手:#{jankens[program_hand]}を出しました"

  puts "-----------------------------"
  
  if player_hand == program_hand
    puts "あいこです"
    return janken

  elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    puts "勝ちました"
    @result = "win"
    puts face

  elsif player_hand == 3
    puts "ゲームを終了します"

  else
    puts "負けました"
    @result = "lose"
    puts face
  end
end

def face
  faces = [ "上" , "下" , "右" , "左" ]
  player_face = faces
  program_face = rand(3)
 
  puts "あっち向いて〜"
  puts "0(上)1(下)2(右)3(左)"

  player_face = gets.to_i

  puts "ホイ！"
  
  puts "-----------------------------"

  puts "あなた:#{faces[player_face]}"
  puts "相手:#{faces[program_face]}"
  
  puts "-----------------------------"

  if(player_face == program_face) && (@result == "win")
    puts "あなたの勝ちです"
    
  elsif(player_face == program_face) && (@result == "lose")
    puts "あなたの負けです"
  
  else
    return janken
  end
end

next_game = true
  while next_game
    next_game = janken
  end
  
attimuite_hoi = false
  while attimuite_hoi
    attimuitehoi = face
  end