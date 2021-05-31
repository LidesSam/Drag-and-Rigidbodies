extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var bullet=preload("res://SourceScenes/Objects/Bullet.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


		

func generate_block_line():
	randomize()
	var b = bullet.instance()
	
	var xgrid = int( round(get_viewport_rect().size.x/32)-2)
	var xpos = (randi()%xgrid+1)*32+16
	b.position = Vector2(xpos,0)
	
	get_parent().add_child(b) 
	$Timer.start()
	
func generateBullet():
	pass
func _on_Timer_timeout():
	generate_block_line()
	pass # Replace with function body.
