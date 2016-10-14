class ChessPiece {
	var color: Bool
	var x: Int
	var y: Int
	var num: Int
	var alive = true
	init(color: Bool, x: Int, y: Int, num: Int){
		self.color = color
		self.x = x
		self.y = y
		self.num = num
	}
	func isPossible(x: Int, y: Int, toX: Int, toY: Int, color: Bool) -> Bool {
		return true
	}
	func move(x: Int, y: Int, toX: Int, toY: Int) -> (Int, Int, Bool, Int) {
		return (0, 0, true, 0)
	}
}

class Pawn: ChessPiece {
	override func isPossible(x: Int, y: Int, toX: Int, toY: Int, color: Bool) -> Bool {
		if color == true {
			if turn == 1 {
				if toY == y + 1 || toY == y + 2 {
					return true
				}
			} else {
				if toY == y + 1 {
					return true
				}
			}
		} else {
			if turn == 2 {
				if toY == y - 1 || toY == y - 2 {
					return true
				}
			} else {
				if toY == y - 1 {
					return true
				}
			}
		}
		return false
	}
}



var turn = 1