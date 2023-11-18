extends ProgressBar

func _input(event):
	if event is InputEventMouseButton:
		# Si l'utilisateur fait défiler vers le haut
		if event.button_index == MOUSE_BUTTON_WHEEL_UP:
			self.value += 10  # Augmentez la valeur comme vous le souhaitez
		# Si l'utilisateur fait défiler vers le bas
		elif event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
			self.value -= 10  # Diminuez la valeur comme vous le souhaitez
