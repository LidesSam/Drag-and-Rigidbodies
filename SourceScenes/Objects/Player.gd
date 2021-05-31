extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var lifepoints =0
var maxLifepoints = 3

var  LastTouchPos = Vector2(0,0)
var  touchTranslation = Vector2(0,0)



var move=0
var lastCposition


var touchStep=0;
# Called when the node enters the scene tree for the first time.
func _ready():
	lifepoints = maxLifepoints	
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(move==2):
		self.position += touchTranslation
		move=0
	pass

# func _unhandled_input(event):
	# if event is InputEventScreenTouch:
	# 	touchStep+=1
	# 	print("aloha",touchStep)
	# 	if(event.pressed):
		# 	print("press")

func _input(event):
	if event is InputEventScreenTouch:
		LastTouchPos = event.position
		move=1
	if event is InputEventScreenDrag:
		touchTranslation = event.position -LastTouchPos
		LastTouchPos = event.position
		move = 2
		
			
		print("move:",move)
	
	print("move:",move)


func _on_Timer_timeout():
	pass # Replace with function body.
