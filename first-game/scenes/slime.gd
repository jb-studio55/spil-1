extends AnimatedSprite2D

const SPEED = 60

var direcktion = 1

@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direcktion = -1
	if ray_cast_left.is_colliding():
		direcktion = 1
	
	position.x += direcktion * SPEED * delta
