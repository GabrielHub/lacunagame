/// @description all of the choice checks nad path logic


//if choice 1 was selected
//show_debug_message("Input string: " + string(choiceAlarm));
if (choiceAlarm == 0) {
	PathLogic(ds_list_find_value(storyOrder, currentStory), 1, storyBook[ds_list_find_value(storyOrder, currentStory), story.path1]);

}
else if (choiceAlarm == 1) {
	//if choice 2 was selected
	PathLogic(ds_list_find_value(storyOrder, currentStory), 2, storyBook[ds_list_find_value(storyOrder, currentStory), story.path2]);
}

//reset character count and alarm choice
char = 0;
choiceAlarm = -1;