///@description Draw function for end screen
//draw variables
var margin = 64;
var width = room_width - margin * 2;

if (room == rm_final) {
	//Draw timer for final room
	draw_set_color(c_red);
	draw_text_ext(room_width - (margin * 2) - 100, margin, "Time Left: " + string(floor((finalLevelTime / 60))), -1, width);
	draw_set_color(c_white);
	
	//Means gameover state
	if (gameWon != -1) {
		if (gameWon == 0) {
			draw_set_halign(fa_center);
			draw_text_ext(room_width / 2 - margin, room_height / 2 - margin, "You remember everything, and wake up from your coma.", -1, width);
		}
		else if (gameWon == 1) {
			draw_set_halign(fa_center);
			draw_text_ext(room_width / 2 - margin, room_height / 2 - margin, "You fail to remember enough to awaken from your coma.", -1, width);
		}
	}
}