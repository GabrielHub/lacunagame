/// @description code executing logic from paths
/// @param currentStoryID , unique key of the current story
/// @param pathNumber , whether it's path 1 or path 2
/// @param pathType , whether it's 0 - 3

var currentStoryID = argument0;
var pathNumber = argument1;
var pathType = argument2;
var ret; //return value is the reponse text string

//path type 0 means correct, path type 1 means wrong
if (pathType == 0) {
	//move on in the story
	currentStory++;
}
else {
	//shuffle order
	ds_list_shuffle(storyOrder);
	
	//restart the story
	currentStory = 0;
	
	//Do effects
}