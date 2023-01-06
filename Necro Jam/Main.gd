extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var timeCount = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	handleEnemy()
	$Timer.start()
	yield($Timer, "timeout")
	$Timer2.start()

func _input(event):
	if Input.is_action_pressed("ui_down"):
		$Player.position.y += 5
	if Input.is_action_pressed("ui_up"):
		$Player.position.y -= 5
	if Input.is_action_pressed("ui_left"):
		$Player.position.x -= 5
	if Input.is_action_pressed("ui_right"):
		$Player.position.x += 5

func handleEnemy():
	if $Enemy.position.x < $Player.position.x:
		$Enemy.position.x += 1
	elif $Enemy.position.x > $Player.position.x:
		$Enemy.position.x -= 1

	if $Enemy.position.y < $Player.position.y:
		$Enemy.position.y += 1
	elif $Enemy.position.y > $Player.position.y:
		$Enemy.position.y -= 1
	
	if $Enemy2.position.x < $Player.position.x:
		$Enemy2.position.x += 1
	elif $Enemy2.position.x > $Player.position.x:
		$Enemy2.position.x -= 1

	if $Enemy2.position.y < $Player.position.y:
		$Enemy2.position.y += 1
	elif $Enemy2.position.y > $Player.position.y:
		$Enemy2.position.y -= 1
	
	if $Enemy3.position.x < $Player.position.x:
		$Enemy3.position.x += 1
	elif $Enemy3.position.x > $Player.position.x:
		$Enemy3.position.x -= 1

	if $Enemy3.position.y < $Player.position.y:
		$Enemy3.position.y += 1
	elif $Enemy3.position.y > $Player.position.y:
		$Enemy3.position.y -= 1

func _on_Timer2_timeout():
	timeCount += 1
	print(str(timeCount))
	$Label.text = str(timeCount)
