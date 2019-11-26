/// @description Insert description here
// You can write your code in this editor

//MAKE SURE TO SET TO TRUE ON EVERY ROOM CHANGE
loadObjects = true; //keeps track on if objects have been loaded or not. Will become false once a room is loaded, and objects are instantiated.

//MAKE SURE TO CLEAR LIST ON EVERY ROOM CHANGE
objectList = ds_list_create(); //contains all interactable objects in a room