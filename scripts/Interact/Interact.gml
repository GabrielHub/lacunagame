///@description When a player steps into an interactable
///@param id , id of the object being stepped in.

var object = argument0;

with (instance_create_depth(500, 500, -5, obj_popup)) {
	textToDraw = object.dialog;
	spriteToDraw = object.sprite;
}

/*
if (object.objectID == 0) {
	with (instance_create_depth(500, 500, -5, obj_text)) {
		textToDisplay = "object
	}
}*/