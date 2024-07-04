if input_check("up"){
	y -= move_speed}
if input_check("down"){
	y += move_speed}
if input_check("left"){
	x -= move_speed}
if input_check("right"){
	x += move_speed}

fsm.step();
