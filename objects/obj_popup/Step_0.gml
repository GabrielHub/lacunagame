/// @description Insert description here
// You can write your code in this editor

if (obj_player.activated == false) {
	instance_destroy();
}

if (isDoor) {
	if (keyboard_check_pressed(ord("E"))) {
		startStory = true;
		show_debug_message("Press E Worked!");
	}
}

if (startStory) {
	//check for input, number keys will select the choices
	
	show_debug_message("step loop working");
	
	var input = -1;
	for (var i = 0; i < choices; i++) {
		if (keyboard_check_pressed(ord(string(i + 1)))) {
			input = i;
			break;
		}
	}


	//str_len will store the # of characters in the current story event
	if (currentStory < ds_list_size(storyOrder)) {
		var str_len = string_length(storyBook[ds_list_find_value(storyOrder, currentStory), story.text]);
		if (input != -1 && char >= str_len) {
			choiceAlarm = input;
			alarm[0] = 20;
		}
	}
	else {
		show_debug_message("OUT OF STORIES OUT OF INDEX");	
	}
}