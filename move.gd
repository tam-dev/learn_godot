extends Sprite2D
var a: int = 2

func _ready():
	print("Hello World")

func _process(delta):
	var direction: int = 0
	var speed: int = 0
	if Input.is_key_pressed(KEY_D):
		direction = 1
	if Input.is_key_pressed(KEY_A):
		direction = -1
	rotation += a * delta * direction
	if Input.is_key_pressed(KEY_W):
		speed = 300
	if Input.is_key_pressed(KEY_S):
		speed = -200
	position += Vector2.UP.rotated(rotation) * speed * delta

	
