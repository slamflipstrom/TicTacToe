class Game 

  attr_reader :p1, :p2


  def intro 
    print "Wanna play Tic, Tac, Toe? Grab a friend!"
    puts""
    setup_players
    set_mark
    # puts result
    
  end
  
  
  # tells player which mark they have been assigned.
  
  def set_mark 
    puts "#{@p1.name} your mark is 'X'"
    puts "#{@p2.name} your mark is 'O'"
  end

  # Sets Player name, mark, and value 

  def setup_players
    puts "Player 1 what is your name"
    name = gets.chomp  
    mark = "X"
    value = 1
    @p1 = Player.new(name, mark, value)
  
  
    puts "Player 2 what is your name"
    name = gets.chomp
    mark = "O"
    value = -1
    @p2 = Player.new(name, mark, value)
  end
  
  
  def sum_array (arr)
   
    
    
    arr.each do |x|
      sum = 0
      x.each do |y|
      sum += y.to_i
      end 
      if sum = 3 || -3
        puts "Player Wins"
      end
    end
  end
  

#finds player input within 'win_arrays' and substitutes player value  

  def game_play
  
  win_array = [ ["TL", "TM", "TR"], ["ML", "MM", "MR"], ["BL", "BM", "BR"], 
    ["TL", "ML", "BL"], ["TM", "MM", "BM"] , ["TR", "MR", "BR"], 
    ["TL", "MM", "BR"], ["TR", "MM", "BL"] ]
              

while true

  puts "Player 1, what is your move?"
  p1_move = gets.chomp.upcase
  win_array.map! { |a| a.map! { |x| x == p1_move ? 1 : x } }
  
  puts "Player 2, what is your move?"
  p2_move = gets.chomp.upcase
  win_array.map! { |a| a.map! { |x| x == p2_move ? -1 : x } }
  
  sum_array (win_array)
    
  
  print win_array
  
end
    
def board_display
  
  x0 = "TL"
  x1 = "TM"
  x2 = "TR"
  x3 = "LM"
  x4 = "MM"
  x5 = "RM"
  x6 = "BL"
  x7 = "BM"
  x8 = "BR"

  board = [x0, x1, x2, x3, x4, x5, x6, x7, x8]

  board_display = "        #{board[0]}  |  #{board[1]}  |  #{board[2]}
        -----------------
          #{board[3]}  |  #{board[4]}  |  #{board[5]}
        -----------------
          #{board[6]}  |  #{board[7]}  |  #{board[8]}  "

  puts board_display

  board.map! { |x| x == p1_move ? "X " : x }
  board.map! { |x| x == p2_move ? "O " : x }

        
   puts board_display
   
   end    
  end
end


