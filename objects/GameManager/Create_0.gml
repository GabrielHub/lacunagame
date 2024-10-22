/// @description Insert description here
// You can write your code in this editor

//MAKE SURE TO SET TO TRUE ON EVERY ROOM CHANGE
loadObjects = true; //keeps track on if objects have been loaded or not. Will become false once a room is loaded, and objects are instantiated.

//MAKE SURE TO CLEAR LIST ON EVERY ROOM CHANGE
objectList = ds_list_create(); //contains all interactable objects in a room

//Story elements
globalvar currentStory;
globalvar storyBook; //contains the events in a room
globalvar storyOrder; //list of events to display
storyOrder = ds_list_create();
currentStory = 0;

/* enum for use in the multidimensional array
	text is the string of the event
	each event has two choices
	story ID is the unique key for each event, which is used when executing certain responses
	there is a path for each event's choice:
		0 means correct
		1 means wrong, restart interaction
*/
enum story {
	text,
	choice1,
	choice2,
	path1,
	path2
}

//Keeping track of the overall score/time
globalvar finalLevelTime;
finalLevelTime = 30000; //total amount of time you get in the room, assuming you lose no time
maxRoomLoss = 7000; //the max amount of time you can lose getting questions wrong at the door
roomLoss = 0; //how much time you've lost in the room, once it hits the max it stops. Reset every room.
#macro amtToLose 1200; //variable for how much time you lose per wrong question
gameWon = -1; //0 when lost, 1 when won