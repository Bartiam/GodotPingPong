extends Node2D

var player_scores = 0
var computer_scores = 0

@onready var computer_paddle = $Computer
@onready var player_paddle = $Player
@onready var ball = $Ball as Ball
@onready var ui = $UI as UI

var prev_player_pos = Vector2.ZERO
var prev_computer_pos = Vector2.ZERO

func _on_enemy_score():
	prev_computer_pos = computer_paddle.global_position
	computer_scores += 1
	ui.update_computer_points(computer_scores)
	reset_game_state()


func _on_player_score():
	prev_player_pos = player_paddle.global_position
	player_scores += 1
	ui.update_player_points(player_scores)
	reset_game_state()

func reset_game_state():
	player_paddle.global_position = prev_player_pos
	computer_paddle.global_position = prev_computer_pos
	ball.start_ball()
