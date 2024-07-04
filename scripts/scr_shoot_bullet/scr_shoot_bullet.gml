/// @description scr_shoot_bullet(Type, Target, Bullet, # of Bullets, Spread, Offset, Speed, Life, Xoff, Yoff, Spin, Trail)
/// @param Type
/// @param  Target
/// @param  Bullet
/// @param  # of Bullets
/// @param  Spread
/// @param  Offset
/// @param  Speed
/// @param  Life
/// @param  Xoff
/// @param  Yoff
/// @param  Spin
/// @param  Trail
function scr_shoot_bullet_IMPORTANT(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11) {


	// Asign the Variables
	var type        = argument0;        // 0 = Shoot at an object, 1 = shoot at Mouse, 2 = Shoot at No One 
	var target      = argument1;        // Where to aim the bullet Ex: "Obj_Player" (Does not matter if you have 1 or 2 selected in "Type")
	var bullet_type = argument2;        // Object of the bullet. Ex: "Obj_bullet"
	var bullets     = argument3;        // Ammount of bullets to Fire
	var spread      = argument4;        // The spread between each bullet
	var offset      = argument5;        // Offset distance from center of the shot
	var spd         = argument6;        // Speed at which the bullet travels
	var life        = argument7;        // How many frames the bullet will last for
	var xoff        = argument8;        // X offset from center (where you shoot from) 
	var yoff        = argument9;        // Y offfset from center (where you shoot from)
	var spin        = argument10;       // Ammount of spin applied each frame to the images angle
	var trail       = argument11;       // Is there a trail behind the bullet? (may cause lag if there are alot of bullets)



	// Check to make sure all arguments are valid
	if (!object_exists(bullet_type)) exit;          // Check to see if the bullet is real
	if (bullets <= 0) bullets = 1;                  // Make sure atleast ONE bullet is being fired
	if (bullets == 1 && spread != 0) spread = 0;    // If only 1 bullet is being fired, spread is 0
	if (spd <= 0) spd = 1;                          // If the speed is below 0, set to 1
	if (life <= 0) life = 1;                        // If life is below 0, set to 1

	// Calculate the start arc
	arc = (((bullets / 2) * spread) * -1) + (spread / 2); 
	/*
	ARC EXPLINATION:
	to get the correct arc inbetween each bullet and make sure the center of ALL the bullets being
	fired is at whever the specified target is,
	Get the number of bullets / 2 to get half the bullets and times it by the spread, giving half the spread.
	invert the spread to get where the first arc almost is.
	to get the exact start position of the arc you have to add half of one spread to it.
	*/


	// Shoot the Bullet at an object
	if (type = 0) {
	    for (i = 0; i < bullets; i++) {
	        b = instance_create(x + xoff,y + yoff, bullet_type);                                    // Create the bullet and assign to a variable
	        b.direction = (point_direction(x + xoff,y + yoff, target.x, target.y) + arc) + offset;  // Give it the proper direction
	        b.image_angle = b.direction;                                                            // Make the image angle equal to the direction its being fired
	        b.life = life;                                                                          // Asign the life of the bullet to the bullet being created
	        b.speed = spd;                                                                          // Give the bullet a speed
	        b.spin = spin;                                                                          // Asign the bullet a spin value
	        b.trail = trail;                                                                        // Toggle bullet trailing on or off (MAY CAUSE LAG WITH ALOT OF BULLETS)
	        arc += spread;                                                                          // Make sure the arc is equal across the whole spread of bullets
	    }
	}

	// Shoot the bullet at the Cursor
	if (type = 1) {
	        for (i = 0; i < bullets; i++) {
	        b = instance_create(x,y,bullet_type);                                               // Create the bullet and assign to a variabl
	        b.direction = (point_direction(x + xoff,y + yoff,mouse_x,mouse_y) + arc) + offset;  // Give it the proper direction
	        b.image_angle = b.direction;                                                        // Make the image angle equal to the direction its being fired
	        b.life = life;                                                                      // Asign the life of the bullet to the bullet being created
	        b.speed = spd;                                                                      // Give the bullet a speed
	        b.spin = spin;                                                                      // Asign the bullet a spin value
	        b.trail = trail;                                                                    // Toggle bullet trailing on or off (MAY CAUSE LAG WITH ALOT OF BULLETS)
	        arc += spread;                                                                      // Make sure the arc is equal across the whole spread of bullets
	    }
	}

	// Shoot the bullet at No One
	if (type = 2) {
	        for (i = 0; i < bullets; i++) {
	        b = instance_create((x + xoff), (y + yoff),bullet_type);        // Create the bullet and add in any offsets to start location
	        b.direction = (0 + arc) + offset;                               // Give the bullet direction plus the directional offset
	        b.image_angle = b.direction;                                    // Asign the angle of the bullet fired to the direction its pointing
	        b.life = life;                                                  // Asign the life of the bullet to the bullet being created
	        b.speed = spd;                                                  // Give the bullet a speed
	        b.spin = spin;                                                  // Asign the bullet a spin value
	        b.trail = trail;                                                // Toggle bullet trailing on or off (MAY CAUSE LAG WITH ALOT OF BULLETS)
	        arc += spread;                                                  // Make sure the arc is equal across the whole spread of bullets
        
	    }
	}


}