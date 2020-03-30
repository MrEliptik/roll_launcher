extends Spatial

onready var effects_idx = AudioServer.get_bus_index("PauseEffects")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _process(delta):
	if get_tree().paused:
		AudioServer.set_bus_bypass_effects(effects_idx, false)
	else:
		AudioServer.set_bus_bypass_effects(effects_idx, true)

