extends RigidBody2D

var is_exploded := false

export var velocity = Vector2()

func _ready():
	set_process(true)
	pass
func _process(delta):
	translate(velocity * delta)
	pass
	
func explode():
	if is_exploded:
		return 
	is_exploded = true
	
	
	get_parent().remove_child(self)
	queue_free()