///@description 


GameManager.loadObjects = true;

//clear objects
for (var i = 0; i < ds_list_size(GameManager.objectList); i++) {
	instance_destroy(GameManager.objectList[| i]);
}