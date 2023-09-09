extends Camera2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _input(event):
	var  init : Vector2 = position
	print(init.x)
	if event.is_action_pressed("left"):
		print("left")  
		init.x += -10
	if event.is_action_pressed("right"):
		print("right")
		init.x += 10
	position = init
