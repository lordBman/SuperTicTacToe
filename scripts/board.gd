class_name Board

var size: int
var cell_size: int
var padding: int

func _init(size: int, padding:= 20):
	self.size = size
	self.cell_size = size / 3
	self.padding = padding

func draw(parent: Node2D, position_x := 0, position_y := 0):
	# drawing the vertical lines 
	for i in 2:
		var x = cell_size + cell_size * i;
		var from := Vector2(x + position_x, padding + position_y)
		var to := Vector2(x + position_x, size + position_y - padding)
		parent.draw_line(from, to, Game.black)
		
	# drawing the horizontal lines 
	for i in 2:
		var y = cell_size + cell_size * i;
		var from := Vector2(padding + position_x, y + position_y)
		var to := Vector2(size + position_x - padding, y + position_y)
		parent.draw_line(from, to, Game.black)
