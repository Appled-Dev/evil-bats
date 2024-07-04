if input_source_using(INPUT_GAMEPAD)
{ 
if input_check("aim_up"){
	y -= 3.2}
if input_check("aim_down"){
	y += 3.2}
if input_check("aim_right"){
	x += 3.2}
if input_check("aim_left"){
	x -= 3.2}
	}
if input_source_using(INPUT_KEYBOARD){
x=lerp(x,mouse_x,0.2);
y=lerp(y,mouse_y,0.2);
}

///finish controller support later alr oki danke bye :3