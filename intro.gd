extends Control


var awaitInput = false

func _ready():
	
	Input.mouse_mode = Input.MOUSE_MODE_HIDDEN
	
	await get_tree().create_timer(5).timeout
	
	for sponsor in $Sponsorships.get_children():
		var tw = get_tree().create_tween()
		tw.tween_property(sponsor, "modulate", Color.WHITE, 3.0)
		await tw.finished
		await get_tree().create_timer(5).timeout
		sponsor.hide()
	
	$Sponsorships/Title.show()
	awaitInput = true

func _input(event):
	if event is InputEventKey and event.pressed and awaitInput:
		$Sponsorships.hide()
		$LoadingScreen.show()
		$LoadingScreen/Stoat/AnimationPlayer.play("speen")
