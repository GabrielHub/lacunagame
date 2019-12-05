///@description When a player steps into an interactable
///@param id , id of the object being stepped in.

var object = argument0;

with (instance_create_depth(500, 500, -5, obj_popup)) {
	textToDraw = object.dialog;
	spriteToDraw = object.sprite;
	isDoor = object.isDoor;
}


var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_index(back_id, 1);


/*
if (object.objectID == 0) {
	with (instance_create_depth(500, 500, -5, obj_text)) {
		textToDisplay = "object"
	}
}/*