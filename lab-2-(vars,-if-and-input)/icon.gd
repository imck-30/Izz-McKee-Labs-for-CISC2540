extends Sprite2D

@export var speed = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print('oh im gettin ready')

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_pressed("move_up"):
		position.y -= 2 + speed 
	if Input.is_action_pressed("move_down"):
		position.y += 2 + speed 
	if Input.is_action_pressed("move_left"):
		position.x -= 2 + speed
	if Input.is_action_pressed("move_right"):
		position.x += 2 + speed
	if Input.is_action_pressed("sprint") and Input.is_action_pressed("move_right"):
		position.x += 6 + speed
		
