///@description Draw function for end screen
//draw variables
var margin = 64;
var width = room_width - margin * 2;

if (room == rm_final) {
	if (gameWon == 0) {
		draw_set_halign(fa_center);
		draw_text_ext(room_width / 2 - margin, room_height / 2 - margin, "You remember everything, and wake up from your coma.", -1, width);
	}
	else if (gameWon == 1) {
		draw_set_halign(fa_center);
		draw_text_ext(room_width / 2 - margin, room_height / 2 - margin, "You fail to remember enough to awaken from your coma.", -1, width);
	}
}