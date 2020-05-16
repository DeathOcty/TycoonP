extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var mouse_over = false

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("mouse_entered", self, "_mouse_over", [true])
	connect("mouse_exited",  self, "_mouse_over", [false])
	
func _mouse_over(over):
	self.mouse_over = over

func _unhandled_input(event):
	if mouse_over:
		print(self.name + "MMOUSE");
	if mouse_over and event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.is_pressed():
		get_tree().set_input_as_handled()
		clicked()

func clicked():
	print(self.name);
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
