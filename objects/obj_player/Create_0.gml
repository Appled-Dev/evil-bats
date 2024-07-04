fsm = new SnowState("idle");
fsm.add("idle",{
    enter: function() {
    },
    step: function() {
	if input_check_pressed("shoot"){
		fsm.change("shoot")}
    },
    draw: function() {
      draw_self();
    }
  });
fsm.add("shoot",{
    enter: function(){
	scr_Player_shoot()
	instance_create(x,y,obj_fire)
	uc_shake(2.2)//GD REFERENCE???!! HOLY CRAPPPP?>?!?!?!?!!? (REAL) (COPS CALLED) (GONE SEXUAL) wait what - fz
    },
    step: function(){
		fsm.change("idle")
    },
    draw: function() {
      draw_self();
    }

  });
 
move_speed = 2;
pellets_multiplier = 1;
pellet_spread = 10;
pellet_accuracy = 10;
pellet_speed = 1.7;
pellet_distance = 0.5;
pellet_damage = 1;

//this is set up in the most jankest way jank could ever be - dt