class Players::Computer

  def move(board)
    computer_move = nil
    corners = [1, 3, 5, 7]
    middle = [2, 4, 6]
    corners.detect do |corner|
      if board.valid_move?(corner)
        computer_move = corner
      else
        middle.detect do |space|
          if board.valid_move?(space)
            computer_move = space
          end
        end
      end
    end
      computer_move.to_s
  end

end
