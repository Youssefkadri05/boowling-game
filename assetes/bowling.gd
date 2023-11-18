extends Node2D

onready var arrow = $DirectionArrow
onready var force_bar = $ForceBar
onready var ball = $BowlingBall

var arrow_speed = 200
var arrow_direction = 1

var force_speed = 1
var force_direction = 1
var is_setting_force = false
