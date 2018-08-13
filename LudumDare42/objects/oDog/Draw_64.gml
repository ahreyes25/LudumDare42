draw_text_transformed(10, 30,	"state: " + string(state),			1, 1, 0);
draw_text_transformed(10, 45,	"hunger: " + string(hunger),		1, 1, 0);
draw_text_transformed(10, 60,	"thirst: " + string(thirst),		1, 1, 0);
draw_text_transformed(10, 75,	"bathroom: " + string(bathroom),	1, 1, 0);
draw_text_transformed(10, 90,	"xp: " + string(round(x) == round(xprevious)),	1, 1, 0);
draw_text_transformed(10, 105,	"yp: " + string(round(y) == round(yprevious)),	1, 1, 0);
draw_text_transformed(10, 120,	"xp_p: " + string(round(phy_position_x) == round(phy_position_xprevious)),	1, 1, 0);
draw_text_transformed(10, 135,	"yp_p: " + string(round(phy_position_y) == round(phy_position_yprevious)),	1, 1, 0);
draw_text_transformed(10, 150,	"inside: " + string(inside),		1, 1, 0);

draw_text_transformed(10, 180,	"x: " + string(round(x)),							1, 1, 0);
draw_text_transformed(10, 195,	"y: " + string(round(y)),							1, 1, 0);
draw_text_transformed(10, 210,	"xp: " + string(round(xprevious)),					1, 1, 0);
draw_text_transformed(10, 225,	"yp: " + string(round(yprevious)),					1, 1, 0);

draw_text_transformed(10, 255,	"horizF: " + string(horizFacing), 1, 1, 0);
draw_text_transformed(10, 270,	"vertF: " + string(vertFacing), 1, 1, 0);