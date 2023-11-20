extends RigidBody3D

# Références vers la flèche et la barre de progression
@onready var arrow = get_node("/root/Bowling/fleche")
@onready var progressBar = get_node("/root/Bowling/Progress_Bar/ProgressBar")

# Vitesse de base à laquelle la balle est lancée
var base_speed = 1

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		launch_ball()

func launch_ball():
	# Direction basée sur la transformation de la flèche
	var direction = arrow.global_transform.basis.x
	direction.y = 0  # Fixe la composante y de la direction à 0
	
	# Force basée sur la valeur de la barre de progression
	var force_multiplier = progressBar.value*2
	var force = direction.normalized() * base_speed * force_multiplier
	
	self.apply_central_impulse(force)


