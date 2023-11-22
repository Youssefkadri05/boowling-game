# GameData.gd
extends Node

var joueur_actuel = 1
var round_actuel = 1
var scores = {1: [0, 0, 0, 0, 0], 2: [0, 0, 0, 0, 0]}

# GameData.gd
func update_ui():
	var root_node = get_tree().current_scene

	for i in range(1, 3):  # Pour 5 rounds
		var score_p1 = scores[1][i - 1]
		var score_p2 = scores[2][i - 1]
		
		var label_node_p1 = root_node.get_node("ControlInstance/GridContainer/Player1/label_P1_R" + str(i))
		var label_node_p2 = root_node.get_node("ControlInstance/GridContainer/Player2/label_P2_R" + str(i))
		
		if i <= round_actuel:
			label_node_p1.text = str(score_p1)
			label_node_p2.text = str(score_p2)
		else:
			label_node_p1.text = ""
			label_node_p2.text = ""

 

   

