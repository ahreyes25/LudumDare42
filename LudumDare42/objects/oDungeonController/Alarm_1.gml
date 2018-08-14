/// @description Spawn Dogs
if (numberOfDogs < numberOfDogsToStart) {
	numberOfDogs++;
	SpawnDogs();
	alarm[1] = 300 + ((numberOfDogsToStart - numberOfDogs) * 4);
}