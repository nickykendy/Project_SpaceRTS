///scr_building_init(maxHp, hp, maxGold, imgIdx, imgSpd, team, weapon)
selected = false;
state = "idle";
foe = -1;
for (var i=0; i<4; i++) {
	slot[i] = false;
}
maxHp = argument0; //99999 unbreakable
hp = maxHp;
maxGold = argument1;
gold = maxGold;
image_index = argument2;
image_speed = argument3;
team = argument4; //0 mine 1 friendly 2 enemy
weapon = argument5; // -1 no weapon