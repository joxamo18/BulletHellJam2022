/// @description Insert description here
// You can write your code in this editor

particleSystem = part_system_create_layer("lay_player", 0)

particleType_Hit = part_type_create()
part_type_sprite(particleType_Hit, spr_particle_orange, 0, 0, 0)
part_type_size( particleType_Hit, 1.5, 2, 0.1, 0)
part_type_life( particleType_Hit, 5, 15)
part_type_alpha3(particleType_Hit, 1, 0.6 ,0.2)
part_type_orientation(particleType_Hit, 0, 359, 0, 0, 0);

particleType_Spark = part_type_create()
part_type_sprite(particleType_Spark, spr_particle_spot, 0, 0, 0)
part_type_size( particleType_Spark, 0.8, 1.4, -0.01, 0)
part_type_life( particleType_Spark, 24, 30)
part_type_alpha3(particleType_Spark, 1, 0.8 ,0.1)
part_type_orientation(particleType_Spark, 0,359,0,0,0)
part_type_speed(particleType_Spark, 2, 4, -0.1, 0)
part_type_direction( particleType_Spark, 0, 359, 0, 0);
part_type_color3( particleType_Spark, 45823, 829418, 952788) //orange