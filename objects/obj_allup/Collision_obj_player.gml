obj_player.move_speed += 0.3;
obj_player.pellets_multiplier += 0.2;
obj_player.pellet_spread -= 0.4;
obj_player.pellet_accuracy -= 0.5;
obj_player.pellet_speed += 0.5;
audio_play_sound(snd_pickup,8,false);
instance_create(x,y,obj_collect)
instance_destroy(self);