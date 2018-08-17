var comments = [
	":(",
	":,(",
	"You're The Worst",
	"Keep Killing Them Why Don't You!",
	"How Do You Live With Yourself?",
	"How Do You Sleep At Night?",
	"You Monster!",
	"Sicko!",
	"Disgusting",
	"F E E D H I M",
	"F E E D H E R",
	"You garbage human being!",
	"My Heart Bleeds!",
	"There Goes Another One...",
	"Their name was " + string(name) + ", you scum!",
	"Their name was " + string(name) + ", you wretch!",
	"I hope you go to jail",
	"I hope you get arrested!",
	"Dog killer",
	"MURDERER!",
	string(name) + " just wanted some food",
	string(name) + " just wanted water.",
	"You're trash",
]

var numberOfComments = array_length_1d(comments);

Words(comments[irandom_range(0, numberOfComments - 1)]);