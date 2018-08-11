roomWidth		= 0;
roomHeight		= 0;
unitWidth		= 0;
unitHeight		= 0;

leftWall		= ds_list_create();
topWall			= ds_list_create();
rightWall		= ds_list_create();
bottomWall		= ds_list_create();

entranceWall	= choose(leftWall, topWall, rightWall, bottomWall);
exitWall		= choose(leftWall, topWall, rightWall, bottomWall);

entrance1X		= noone;
entrance1Y		= noone;
entrance2X		= noone;
entrance2Y		= noone;
exit1X			= noone;
exit1Y			= noone;
exit2X			= noone;
exit2Y			= noone;

alarm[0]		= 1;