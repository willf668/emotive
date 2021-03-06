/// @description Insert description here
// You can write your code in this editor

networking = true;

enum Emotions{none = -1, neutral = 0, angry = 1, disgust = 2, fear = 3, happy = 4, sad = 5, surprise = 6};
emotion = Emotions.neutral;
lastEmotion = Emotions.none;

spd = 8;

hitPower = 10;
hitTightening = 80;

color1goal = make_color_rgb(155,171,178);
color2goal = make_color_rgb(127,112,138);
color3goal = make_color_rgb(105,79,98);
color1 = color1goal;
color2 = color2goal;
color3 = color3goal;
colorSpd = 0.1;

image_xscale = 3;
image_yscale = .5;

goalWidth = 3;
goalY = y;

won = false;
lost = false;
resetTimer = 120;

alarm[0] = 60;

//Reset
function restart(){
	won = false;
	lost = false;
	resetTimer = 60;
	for(var yy = 0; yy < 5; yy++){
		for(var xx = 0; xx < 8; xx++){
			var newX = 576 + xx*112;
			var newY = 288 + yy*56;
			if(!collision_point(newX + 16, newY + 16, obj_brick, false, false)){
				instance_create_layer(newX, newY, "Bricks", obj_brick);
			}
		}
	}
	obj_ball.x = room_width / 2;
	obj_ball.y = 576;
	obj_ball.hsp = 0;
	obj_ball.vsp = 7;
	x = room_width / 2 - 32*image_xscale;
}
restart();