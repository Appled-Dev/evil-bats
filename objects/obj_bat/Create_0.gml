hp= 5;
AI = true;
hit = false

fsm = new SnowState("idle");
fsm.add("idle",{
    enter: function() {
    },
    step: function() {
    },
    draw: function() {
      draw_self();
    }
  });

speed=random(3.2);
