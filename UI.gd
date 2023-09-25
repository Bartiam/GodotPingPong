extends CanvasLayer

class_name UI

@onready var player_points_label = get_node("MarginContainer/PlayerPoints")
@onready var computer_points_label = get_node("MarginContainer/ComputerPoints")

# Called when the node enters the scene tree for the first time.
func _ready():
	player_points_label.text = "%d" % 0
	computer_points_label.text = "%d" % 0

func update_computer_points(points: int):
	computer_points_label.text = "%d" % points

func update_player_points(points: int):
	player_points_label.text = "%d" % points
