extends RigidBody3D

# Références vers la flèche et la barre de progression
@onready var arrow = get_node("/root/Bowling/fleche")
@onready var progressBar = get_node("/root/Bowling/Progress_Bar/ProgressBar")

# Vitesse de base à laquelle la balle est lancée
var base_speed = 10

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		launch_ball()

func launch_ball():
	# Direction basée sur la rotation de la flèche
	var direction = Vector3(cos(arrow.rotation.y), 0, sin(arrow.rotation.y))
	
	# Force basée sur la valeur de la barre de progression
	var force_multiplier = progressBar.value / 100.0
	var force = direction * base_speed * force_multiplier
	
	self.apply_central_impulse(force)
