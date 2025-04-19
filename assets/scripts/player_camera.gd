extends Node3D

var aniamtion_player: AnimationPlayer
var camera_opened = false

func _ready():
	aniamtion_player = get_node( "Tablit/AnimationPlayer" );
	

func _on_texture_button_pressed() -> void:
	
	if camera_opened:
		camera_opened = false
		aniamtion_player.play( "Cube_003Action", -1, -2.0, true )
	else:
		camera_opened = true
		aniamtion_player.play( "Cube_003Action", -1, 2.0, false )
