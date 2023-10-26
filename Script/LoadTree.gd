extends ItemList

@onready var musicName = get_node("../MusicName")
@onready var Audio = get_node("../Audio")

# Called when the node enters the scene tree for the first time.
func _ready():
	var file = DirAccess.get_files_at("Music")
	for key in file:
		if key.get_extension() == "mp3" :
			add_item(key)

func _on_item_selected(index):
	musicName.text = str(get_item_text(index))
	Audio.stream = load ("Music/" + get_item_text(index))
	pass # Replace with function body.
