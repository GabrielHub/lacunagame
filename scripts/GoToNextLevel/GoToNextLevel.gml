GameManager.loadObjects = true;
GameManager.roomLoss = 0;

//clear objects
for (var i = 0; i < ds_list_size(GameManager.objectList); i++) {
	instance_destroy(GameManager.objectList[| i]);
}

if (room != rm_final) {
	room_goto_next();
}