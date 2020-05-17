extends Node


var CardHighlight = false;
var CardNode = preload("res://Card.tscn")

func _ready():
	var newCard = CardNode.instance();
	
	self.add_child(newCard)


func CheckHigh():
	if(!CardHighlight):
		CardHighlight = true;
		return true;
	return false;


func _process(_delta):
	CardHighlight = false;
