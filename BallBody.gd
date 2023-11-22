extends RigidBody3D

var est_tombee = false

func _ready():
	pass  # Initialisation si nécessaire

func _physics_process(delta):
	if !est_tombee:
		if abs(rotation_degrees.x) > 45 or abs(rotation_degrees.y) > 45 or abs(rotation_degrees.z) > 45:
			est_tombee = true
