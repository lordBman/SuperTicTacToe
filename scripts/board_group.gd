extends Node2D

var boards := []

@export var padding := 20
@export var position_x := 0
@export var position_y := 0

func _ready():
	for i in 9:
		boards.push_front(Board.new(Game.BoardCell, 10))
	

func _draw():
	# drawing the vertical lines 
	for i in 2:
		var x = Game.BoardCell + Game.BoardCell * i;
		var from := Vector2(x + position_x, padding + position_y)
		var to := Vector2(x + position_x, Game.BoardHeight + position_y - padding)
		draw_line(from, to, Game.black, 2)
		
	# drawing the horizontal lines 
	for i in 2:
		var y = Game.BoardCell + Game.BoardCell * i;
		var from := Vector2(padding + position_x, y + position_y)
		var to := Vector2(Game.BoardWidth + position_x - padding, y + position_y)
		draw_line(from, to, Game.black, 2)
	
	var index = 0	
	for board in boards:
		var x = (index % 3) * Game.BoardCell
		var y = (index / 3) * Game.BoardCell
		(board as Board).draw(self, x, y)
		index += 1
