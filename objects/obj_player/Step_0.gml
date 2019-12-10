//elapsed time to remove fps based movement
var ideal_delta_time = 1 / room_speed * 1000000;
var elapsed = delta_time / ideal_delta_time;

//movement
if (keyboard_check(vk_right)) {
	accel_x = 0.2;
}
else if (keyboard_check(vk_left)) {
	accel_x = -0.2;
}
else {
	accel_x = 0;	
}

if (keyboard_check(vk_up)) {
	accel_y = -0.2;
}
else if (keyboard_check(vk_down)) {
	accel_y = 0.2;
}
else {
	accel_y = 0;
}

vel_x = lerp(vel_x, 0.0, fric * elapsed);
if (vel_x <= vel_max && vel_x >= -vel_max) {
	vel_x += accel_x * elapsed;
}
//x += vel_x * elapsed;

vel_y = lerp(vel_y, 0.0, fric * elapsed);
if (vel_y <= vel_max && vel_y >= -vel_max) {
	vel_y += accel_y * elapsed;
}
//y += vel_y * elapsed;

//collision
if (place_meeting(x + vel_x, y, obj_prop)) {
    while (!place_meeting(x + sign(vel_x), y, obj_prop)) {
		x += sign(vel_x);
	}
        
    vel_x = 0;
}
x += vel_x * elapsed;

if (place_meeting(x, y + vel_y, obj_prop)) {
    while (!place_meeting(x, y + sign(vel_y), obj_prop)) {
		y += sign(vel_y);
	}
        
    vel_y = 0;
}
y += vel_y * elapsed;

//check for collision with player inside interactable
var inst = collision_rectangle(x - sprite_width / 2, y - sprite_height, x + sprite_width, y + sprite_height, obj_interactable, false, true);
if (inst) {
	if (!activated) {
		activated = true;
		show_debug_message("Player entered interaction box");
		Interact(inst); //checks what the action should be for the registered object id
		
	}
}
else {
	if (activated) {
		activated = false;
		show_debug_message("Player left interaction box");
	}
}

//particle system for door
if (!activated) {
	part_emitter_burst(obj_particle.particleSystem, obj_particle.emit, obj_particle.particle, 1);
}