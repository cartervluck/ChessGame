var turn = 0

class Board {
	var boardPieces: [[[StaticChessPiece]]] = [[[],[],[],[],[],[],[],[]],[[],[],[],[],[],[],[],[]],[[],[],[],[],[],[],[],[]],[[],[],[],[],[],[],[],[]],[[],[],[],[],[],[],[],[]],[[],[],[],[],[],[],[],[]],[[],[],[],[],[],[],[],[]],[[],[],[],[],[],[],[],[]]]
}



class StaticChessPiece {
	var color: Bool = true
	var x: Int = 0
	var y: Int = 0
	var num: Int = 0
	var whoseTurn = true
	init(color: Bool, x: Int, y: Int, num: Int){
		self.color = color
		self.x = x
		self.y = y
		self.num = num
	}
	func isPossible( x: Int,  y: Int,  toX: Int,  toY: Int, _ color: Bool) -> Bool {
		return true
	}
	func move(x: Int, y: Int, toX: Int, toY: Int) {
		//Empty method for chessBoard to access, changes in ChessPieces.
	}
	/*func inTheWay(between: [Int], current: Int) {
		for place in between.count {
			if
		}
	}*/
}

let chessBoard = Board()

class ChessPiece: StaticChessPiece {
	override func move(x: Int, y: Int, toX: Int, toY: Int) {
		if turn % 2 == 0 {
			whoseTurn = true
		} else {
			whoseTurn = false
		}
		if isPossible(x, y, toX, toY, whoseTurn) {
			chessBoard.boardPieces[toX][toY][0] = self
		} else {
			print("move not possible")
		}
	}
}

//Piece Classes
class Pawn: ChessPiece {
	override func isPossible( x: Int,  y: Int,  toX: Int,  toY: Int, _ color: Bool) -> Bool {
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

class Bishop: ChessPiece {
	override func isPossible( x: Int,  y: Int,  toX: Int,  toY: Int, _ color: Bool) -> Bool {
		if toX - x == toY - y {
			return true
		} else {
			return false
		}
	}
}

class Rook: ChessPiece {
	override func isPossible( x: Int,  y: Int,  toX: Int,  toY: Int, _ color: Bool) -> Bool {
		if toX - x == 0{
			if toY - y != 0{
				return true
			}
			else{
				return false
			}
		}
	else if toY - y == 0{
		if toX - x != 0{
			return true
		}
		else{
			return false
		}
	}
}

//Board Setup
chessBoard.boardPieces[0][0].append(let BR1: StaticChessPiece = Rook(color: false, x: 0, y: 0, num: 1))

/*

var boardPieces: [[[ChessPiece]]] =

[
[[],[],[],[],[],[],[],[]],
[[],[],[],[],[],[],[],[]],
[[],[],[],[],[],[],[],[]],
[[],[],[],[],[],[],[],[]],
[[],[],[],[],[],[],[],[]],
[[],[],[],[],[],[],[],[]],
[[],[],[],[],[],[],[],[]],
[[],[],[],[],[],[],[],[]]
]

*/
