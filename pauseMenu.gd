extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/ContinueBtn.grab_focus()
	
func _input(event):
	if Input.is_action_just_pressed('ui_accept'):
		pass


func _on_ContinueBtn_pressed():
	visible = false
	get_tree().paused = false


func _on_ExitBtn_pressed():
	$Popup.visible = true


func _on_YesBtn_pressed():
	if $Popup.visible:
		get_tree().quit()


func _on_NoBtn_pressed():
	if $Popup.visible:
		$Popup.visible = false
