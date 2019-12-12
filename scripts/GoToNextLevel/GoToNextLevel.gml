GameManager.loadObjects = true;
GameManager.roomLoss = 0;
currentStory = 0;
ds_list_clear(storyOrder);
storyBook = ""; //might cause errors, eheck back here if you encounter errors in the next room

//audio_stop_all();

//clear objects
for (var i = 0; i < ds_list_size(GameManager.objectList); i++) {
	instance_destroy(GameManager.objectList[| i]);
}
if (instance_exists(obj_particle)) {
	part_system_destroy(obj_particle.particleSystem);
}

if (room != rm_final) {
	room_goto_next();
}