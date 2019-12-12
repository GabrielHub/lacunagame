if (room == rm_test) {
	if (loadObjects) {
		loadObjects = false;
		audio_play_sound(snd_bgmusic, 1, true);
		
		//create story elements
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
		
		storyBook[2, story.text] = "Why is this receipt here?";
		storyBook[2, story.choice1] = "I'm getting new toys!";
		storyBook[2, story.choice2] = "They got rid of my toys!";
		storyBook[2, story.path1] = 1;
		storyBook[2, story.path2] = 0;
		ds_list_add(storyOrder, 2);
		
		storyBook[3, story.text] = "Why do we keep leaving?";
		storyBook[3, story.choice1] = "They're on the run.";
		storyBook[3, story.choice2] = "Dad's in the military.";
		storyBook[3, story.path1] = 0;
		storyBook[3, story.path2] = 1;
		ds_list_add(storyOrder, 3);
		
		storyBook[4, story.text] = "Where are we going?";
		storyBook[4, story.choice1] = "Somewhere fun.";
		storyBook[4, story.choice2] = "Somewhere I don't want to.";
		storyBook[4, story.path1] = 1;
		storyBook[4, story.path2] = 0;
		ds_list_add(storyOrder, 4);
		
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
			dialog = "You peer outside the window. On a dim, cloudy, day,\nthere's a visibily hectic woman making rapid dashes to the car in the driveway\ncallously dumping boxes in the backseat. She eventually spots you and with a look of irritation\n on her face and beckons you to come";
			sprite = spr_dialog;
		}
		var inst_bed = instance_create_depth(727, 233, -1, obj_interactable)
		ds_list_add(objectList, inst_bed);
		with (inst_bed){
			objectID = 1;
			dialog = "There's nothing under the bed. That's a bit dissapointing\nbut you are inexplicably relieved that there are no monsters under it"
			sprite = spr_bed;
		}
		var inst_drawer = instance_create_depth(616, 817, -1, obj_interactable)
		ds_list_add(objectList, inst_drawer);
		with (inst_drawer){
			objectID = 5;
			dialog = "You pull open the dresser. Inside you find a pile of crumbled up papers. Some of these are crudely drawn drawings\nthe rest though, are old photographs. You can't seem to recall what they depicted, but they seem too important\nto just leave like this."
			sprite = spr_news;
		}
		var inst_drawing = instance_create_depth(640, 129, -1, obj_interactable)
		ds_list_add(objectList, inst_drawing);
		with (inst_drawing){
			objectID = 6;
			dialog = "There's a drawing hanging on the wall. As far as you can discern from the picture, it's a man in a construction hat\nholding hands with a smaller figure with a paint brush\nit's no masterpiece, but deep down, you kinda feel proud of it."
			sprite = spr_news;
		}
	}
}
else if (room = rm_teen){
    if (loadObjects) {
        loadObjects = false;
        audio_play_sound(snd_bgmusic, 1, true);
        storyBook[0, story.text] = "What are we doing back here?";
        storyBook[0, story.choice1] = "We didn’t move out after all?";
        storyBook[0, story.choice2] = "Parents divorced?";
        storyBook[0, story.path1] = 1;
        storyBook[0, story.path2] = 0;
        ds_list_add(storyOrder, 0);
        storyBook[1, story.text] = "What's special about today?";
        storyBook[1, story.choice1] = "Birthday?";
        storyBook[1, story.choice2] = "Christmas?";
        storyBook[1, story.path1] = 1;
        storyBook[1, story.path2] = 0;
        ds_list_add(storyOrder, 1);
        storyBook[2, story.text] = "Who's the letter from?";
        storyBook[2, story.choice1] = "Older Brother?";
        storyBook[2, story.choice2] = "Younger Sister?";
        storyBook[2, story.path1] = 0;
        storyBook[2, story.path2] = 1;
        ds_list_add(storyOrder, 2);
        storyBook[3, story.text] = "What do you see yourself as?";
        storyBook[3, story.choice1] = "A wistful child";
        storyBook[3, story.choice2] = "A wisened adult";
        storyBook[3, story.path1] = 0;
        storyBook[3, story.path2] = 1;
        ds_list_add(storyOrder, 3);
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
        var inst_easel = instance_create_depth(400, 400, -1, obj_interactable)
        ds_list_add(objectList, inst_easel);
        with (inst_easel) {
            objectID = 1;
            dialog = "The easel has a half finished painting stretched over it.\nThe picture wasn't complete but from what's been\ndone it looks like some fantasy scenery";
            sprite = spr_easel;
        }
        var  inst_letter= instance_create_depth(400, 400, -1, obj_interactable)
        ds_list_add(objectList, inst_letter);
        with (inst_letter) {
            objectID = 2;
            dialog = "There's a letter sitting atop your dresser. It reads\n'Hey Sis, how are things with mom. I wish the whole family could be together for the holidays, buy you know ... hope you'll come visit dad and I sometime'";
            sprite = spr_receipt;
        }
        var  inst_poster= instance_create_depth(400, 400, -1, obj_interactable)
        ds_list_add(objectList, inst_poster);
        with (inst_poster) {
            objectID = 3;
            dialog = "The poster on the wall shows a posterized image of a child scribbling on a notebook. Behind him is a man slumped over the desk. One the sides the caption reads 'Use Your Illusion'";
            sprite = spr_receipt;
        }
        var  inst_teenWindow= instance_create_depth(400, 400, -1, obj_interactable)
        ds_list_add(objectList, inst_teenWindow);
        with (inst_teenWindow) {
            objectID = 4;
            dialog = "Cloudy days had turned to snowy onces outside. Lights\nhung down from the roof of the neighbors house. A boy strolled\nout from your house.";
            sprite = spr_receipt;
        }
        var  inst_homework= instance_create_depth(400, 400, -1, obj_interactable)
        ds_list_add(objectList, inst_homework);
        with (inst_homework) {
            objectID = 5;
            dialog = "There were pages strewn across the desk, filled with hastily scribbled factoids.\nA massive history book was plopped in the center of it all";
            sprite = spr_hw;
        }
        var  inst_footprints= instance_create_depth(400, 400, -1, obj_interactable)
        ds_list_add(objectList, inst_footprints);
        with (inst_footprints) {
            objectID = 6;
            dialog = "Snowy footprints trailed into the room. They are quite large.";
            sprite = spr_receipt;
        }
        var  inst_gift= instance_create_depth(400, 400, -1, obj_interactable)
        ds_list_add(objectList, inst_gift);
        with (inst_gift) {
            objectID = 7;
            dialog = "This was a gift wrapped box. It warms the heart knowing someone would give it to you";
            sprite = spr_gift;
        }
    }
}
else if (room = rm_college){
    if (loadObjects) {
        loadObjects = false;
        audio_play_sound(snd_bgmusic, 1, true);
        storyBook[0, story.text] = "Why aren’t you in school?";
        storyBook[0, story.choice1] = "I chose another path";
        storyBook[0, story.choice2] = "I am. Just not the one I wanted";
        storyBook[0, story.path1] = 1;
        storyBook[0, story.path2] = 0;
        ds_list_add(storyOrder, 0);
        storyBook[1, story.text] = "Where's your brother?";
        storyBook[1, story.choice1] = "He's out of state at college";
        storyBook[1, story.choice2] = "He's on a date with his girlfriend";
        storyBook[1, story.path1] = 0;
        storyBook[1, story.path2] = 1;
        ds_list_add(storyOrder, 1);
        storyBook[2, story.text] = "How do you feel about your memories?";
        storyBook[2, story.choice1] = "Fondly";
        storyBook[2, story.choice2] = "Disdainfully";
        storyBook[2, story.path1] = 1;
        storyBook[2, story.path2] = 0;
        ds_list_add(storyOrder, 2);
        storyBook[3, story.text] = "How have you been dealing with your feelings";
        storyBook[3, story.choice1] = "Sorrowfully";
        storyBook[3, story.choice2] = "Violentlly";
        storyBook[3, story.path1] = 1;
        storyBook[3, story.path2] = 0;
        ds_list_add(storyOrder, 3);
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
        var inst_hole = instance_create_depth(400, 400, -1, obj_interactable)
        ds_list_add(objectList, inst_hole);
        with (inst_hole) {
            objectID = 1;
            dialog = "Theres a cratered hole in the wall. It looks like something\nstruck it really hard";
            sprite = spr_hole;
        }
        var inst_chest = instance_create_depth(400, 400, -1, obj_interactable)
        ds_list_add(objectList, inst_chest);
        with (inst_chest) {
            objectID = 2;
            dialog = "Enclosed in the chest were an assortment of cds. I remember\nthem from when they used to sit on the bookshelf years ago. With them was the poster that used to hang on\nthe wall. Deeper down I saw the painting finally finished.\nAt the very bottom were the drawings I recall from my childhood.\n For some reason they made me sick to my stomach";
            sprite = spr_receipt;
        }
        var inst_photos = instance_create_depth(400, 400, -1, obj_interactable)
        ds_list_add(objectList, inst_photos);
        with (inst_photos) {
            objectID = 3;
            dialog = "Splattered wildly on the floor were a bunch of old photos.\nAmong the pile was an newly desecrated album.";
            sprite = spr_receipt;
        }
        var inst_albums = instance_create_depth(400, 400, -1, obj_interactable)
        ds_list_add(objectList, inst_albums);
        with (inst_albums) {
            objectID = 3;
            dialog = "There were rows and rows of photo albums on my bookshelf.\n The photos seemed all ruffled and torn, but also carefully placed into the album.";
            sprite = spr_shelf;
        }
        var inst_admission = instance_create_depth(400, 400, -1, obj_interactable)
        ds_list_add(objectList, inst_admission);
        with (inst_admission) {
            objectID = 4;
            dialog = "There were a pile of letters on the desk\nOpening one up you see that it's a college admissions letter, and\nyou've been accepted! It's in L.A. too, how exciting!";
            sprite = spr_receipt;
        }
        var inst_collegeWindow = instance_create_depth(400, 400, -1, obj_interactable)
        ds_list_add(objectList, inst_collegeWindow);
        with (inst_admission) {
            objectID = 5;
            dialog = "You looked out the window to see a man and woman arguing on the driveway!\nThe only words you can make out through the class are the\nwomen screaming 'I am absolutely not okay with her moving that far away!'";
            sprite = spr_dialog;
        }
        var inst_phone = instance_create_depth(400, 400, -1, obj_interactable)
        ds_list_add(objectList, inst_phone);
        with (inst_phone) {
            objectID = 6;
            dialog = "The phone on your bed pinged in response to a text message.\nBro:'I'll be back in town for winter break\nBro: 'also why does mom keep asking us to look for old photographs'";
            sprite = spr_phone;
        }
    }
}
else if (room == rm_final) {
	if (loadObjects) {
		loadObjects = false;
	}
	
	//Final room is different do time logic, end game if out of time.
	finalLevelTime--;
	if (finalLevelTime <= 0) {
		if (gameWon == 0) {
			//lose state
		}
		else {
			//win state, might not be necessary as it could be impossible to win when running out of time
			show_debug_message("STATE: Time is out but player has won?");
		}
	}
	//if game is won and time is still left
	if (gameWon == 1) {
		
	}
}