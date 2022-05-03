game_set_speed(60,gamespeed_fps);

var lay_id_1 = layer_get_id("Room_1")
layer_shader(lay_id_1, sh_invicible_tiles)

var lay_id_2 = layer_get_id("Room_2")
layer_shader(lay_id_2, sh_invicible_tiles_room_2)

var tilesLayer =  layer_get_id("Tiles")
layer_shader(tilesLayer, sh_grayscale)

var furnitureTilesLayer =  layer_get_id("furniture_tiles")
layer_shader(furnitureTilesLayer, sh_grayscale)

var wall_tiles =  layer_get_id("wall_tiles")
layer_shader(wall_tiles, sh_grayscale)

var TrainStartingPoint =  layer_get_id("TrainStartingPoint")
layer_shader(TrainStartingPoint, sh_grayscale)

var lay_walls =  layer_get_id("lay_walls")
layer_shader(lay_walls, sh_grayscale)

var Background =  layer_get_id("Background")
layer_shader(Background, sh_grayscale)
