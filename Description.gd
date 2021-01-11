tool
extends Sprite3D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var text = "placeholder" setget setText

# Called when the node enters the scene tree for the first time.
func _ready():
	texture = $Viewport.get_texture()
	pass # Replace with function body.
	
func setText(newText):
	text = newText
	$Viewport/CenterContainer/Label.text = text


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
