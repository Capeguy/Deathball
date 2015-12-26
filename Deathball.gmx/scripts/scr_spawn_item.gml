itemNum = argument0;
array[0] = obj_item_sonic;
array[1] = obj_item_snail;

itemsOnField++;
randomize();
var itemX = irandom_range(64, room_width-64);
randomize();
var itemY = irandom_range(600, 800);
instance_create(itemX, itemY, array[itemNum]);
