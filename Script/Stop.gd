extends Button

@onready var Audio = get_node("../Audio")

func _on_pressed():
	Audio.stop ();
