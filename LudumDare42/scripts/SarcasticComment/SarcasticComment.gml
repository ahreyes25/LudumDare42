var comments = [
	"Wow",
	"...........",
	":(",
	":,(",
	"You're The Worst",
	"Keep Killing Them Why Don't You!",
	"How Do You Live With Yourself?",
	"How Do You Sleep At Night?",
	"You Monster!",
	"Sicko!",
	"Disgusting",
	"What about " + string(choose("her", "his")) + " family?",
	"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",
	"F E E D H I M",
	"F E E D H E R",
	"You garbage human being!",
	"My Heart Bleeds!",
	"There Goes Another One...",
	"Their name was " + string(name) + ", you scum!",
	"Their name was " + string(name) + ", you wretch!",
	"Their name was " + string(name) + ", you wretch!",
	"Their name was " + string(name) + ", you wretch!",
]

var numberOfComments = array_length_1d(comments);

Words(comments[irandom_range(0, numberOfComments - 1)]);