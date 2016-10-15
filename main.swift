class ChessPiece {
	var color: Bool = true
	var x: Int = 0
	var y: Int = 0
	var num: Int = 0
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
	func move(x: Int, y: Int, toX: Int, toY: Int) {
		if isPossible(x = x, y = y, toX = toX, toY = toY, color: turn % 2) {
			//change board array
		} else {
			print("move not possible")
		}
	}
}

class Pawn: ChessPiece {
	override func isPossible(x: Int, y: Int, toX: Int, toY: Int, color: Bool) -> Bool {
		if color == true {
			if turn == 0 {
				if toY == y + 1 || toY == y + 2 {
					return true
				}
			} else {
				if toY == y + 1 {
					return true
				}
			}
		} else {
			if turn == 1 {
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

class Board {
	var boardPieces: [[ChessPiece]] = [[],[var WP1: ChessPiece = Pawn(color = true, x = 0, y = 1, num = 1)]]
}

var turn = 1