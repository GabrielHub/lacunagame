if (room == rm_test) {
	if (loadObjects) {
		loadObjects = false;
		
		//receipt object
		instance_create_depth(400, 400, -1, obj_prop);
		var inst_receipt = instance_create_depth(400, 400, -1, obj_interactable)
		ds_list_add(objectList, inst_receipt);
		with (inst_receipt) {
			objectID = 0;
			dialog = "You find a receipt for a donation of a large amount of toys.";
			sprite = spr_receipt;
		}
		
		
	}
}