var comments = [
	"Wow",
	"...........",
	":(",
	":,(",
	"You're The Worst",
	"Keep Killing Them Why Don't You!",
	"You've only killed " + string(oDungeonController.numberOfDeadDogs) + "...",
	"How Do You Live With Yourself?",
	"How Do You Sleep At Night?",
	"You Monster",
	"Sicko",
	"Disgusting",
	"Where's " + string(choose("her", "his")) + " family?",
	"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",
	"F E E D H I M",
	"F E E D H E R",
	"My Heart Bleeds",
	"There Goes Another One",
	"Their name was " + string(name),
	"Their name was " + string(name),
	"Their name was " + string(name),
	"Their name was " + string(name),
]

var numberOfComments = array_length_1d(comments);

Words(comments[irandom_range(0, numberOfComments - 1)]);