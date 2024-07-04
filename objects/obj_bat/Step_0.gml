if AI = true{
	move_towards_point(obj_player.x,obj_player.y,speed)}
if hit = true{
	image_blend = c_red}
	else image_blend = c_white;
if hp <= 1{
var rand = random(1);
if (rand < 1/15) {
   instance_create(x,y,obj_allup)}
   audio_play_sound(snd_batdeath,9,false);
   instance_create(x,y,obj_explosion);
	instance_destroy(id)};
	
