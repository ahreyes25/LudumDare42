var amount = argument0;
oDungeonController.points += amount;

var p = instance_create_layer(x + random_range(-10, 10), y + random_range(-10, 10), "UI", oPoints);
p.value = amount;