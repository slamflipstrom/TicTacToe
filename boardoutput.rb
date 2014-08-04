

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


 
binding.pry
