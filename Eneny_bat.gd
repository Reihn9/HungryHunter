extends Area2D
@export var flip_time = 1 
var direction = 1

func _ready():
	$Timer.wait_time = flip_time
	
	
	
func _process(delta):
	translate(Vector2.RIGHT * direction)
	$AnimatedSprite2D.flip_h = direction > 0
	
	
	

func _on_timer_timeout():
	direction *= -1 
	


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		get_tree().reload_current_scene()
