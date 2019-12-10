/// @description Particle system used to indicate door interact

particleSystem = part_system_create();
particle = part_type_create();


part_system_depth(particleSystem, 0);
part_type_shape(particle, pt_shape_square);
part_type_scale(particle, 1, 1);

/*
ind is the particle variable. 
size_min and size_max determine the range of the particle size when it is first created. If you want a uniform size, simply enter the same value for both the min and the max. 
size_incr is a value that allows the particle to grow or shrink over time. This value determines the speed of growth, so if you don’t want your sprite to change size, you can use a value of 0. 
size_wiggle is slightly more complicated, so we’ll cover that in the advanced techniques section below.
*/
part_type_size(particle, 0.10, 0.15, -0.002, 0);

part_type_color2(particle, $ff6666, c_yellow); //orange to yellow

part_type_alpha2(particle, 1, 0.5);

part_type_speed(particle, 0.1, 0.5, -0.01, 0);

part_type_direction(particle, 0, 359, 0, 0);

part_type_gravity(particle, 0.02, 90);

part_type_orientation(particle, 0, 359, 0, 10, true);

part_type_life(particle, 25, 100);

part_type_blend(particle, true);

//Emitter
emit = part_emitter_create(particleSystem);
part_emitter_region(particleSystem, emit, x - 20, x + 20, y - 20, y + 20, ps_shape_diamond, ps_distr_gaussian);