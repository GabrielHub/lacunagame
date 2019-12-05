if (room == rm_test) {
	if (loadObjects) {
		loadObjects = false;
		
		//craete story elements
		storyBook[0, story.text] = "Who are you?";
		storyBook[0, story.choice1] = "A child.";
		storyBook[0, story.choice2] = "A parent.";
		storyBook[0, story.path1] = 0;
		storyBook[0, story.path2] = 1;
		ds_list_add(storyOrder, 0);
		
		storyBook[1, story.text] = "What's with the boxes?";
		storyBook[1, story.choice1] = "We're moving out?";
		storyBook[1, story.choice2] = "We're moving in?";
		storyBook[1, story.path1] = 0;
		storyBook[1, story.path2] = 1;
		ds_list_add(storyOrder, 1);
		
		
		//create door first
		var inst_door = instance_create_depth(920, 600, -1, obj_interactable)
		ds_list_add(objectList, inst_door);
		with (inst_door) {
			objectID = 0;
			dialog = "Press 'E' to rebuild memory.";
			sprite = spr_door;
			isDoor = true;
			
			//how to change sprite width and height do it here
			image_xscale = 0.8;
			image_yscale = 0.8;
		}
		
		//receipt object
		var inst_receipt = instance_create_depth(400, 400, -1, obj_interactable)
		ds_list_add(objectList, inst_receipt);
		with (inst_receipt) {
			objectID = 1;
			dialog = "You find a receipt for a donation of a large amount of\ntoys.";
			sprite = spr_receipt;
		}
		
		var inst_newspaper = instance_create_depth(712, 604, -1, obj_interactable)
		ds_list_add(objectList, inst_newspaper);
		with (inst_newspaper){
			objectID = 2;
			dialog = "Sheets of newspapers have been layed across the floor\n as a door mat. The headlines on one of them reads\n'Man walks in space's";
			sprite = spr_news;
		}
		
		var inst_window = instance_create_depth(133, 477, -1, obj_interactable)
		ds_list_add(objectList, inst_window);
		with (inst_window){
			objectID = 3;
			dialog = "You peer outside the window. On a dim, cloudy, day,\nthere's a visibily hectic woman making rapid dashes to the car in the driveway\ncallously dumping boxes in the backseat. She eventually spots you and with a look of irritation\n on her face and becons you to come";
			sprite = spr_news;
		}
		var inst_bed = instance_create_depth(727, 233, -1, obj_interactable)
		ds_list_add(objectList, inst_bed);
		with (inst_window){
			objectID = 1;
			dialog = "There's nothing under the bed. That's a bit dissapointing\nbut you are inexplicably relieved that there are no monsters under it"
			sprite = spr_news;
		}
		
	}
}