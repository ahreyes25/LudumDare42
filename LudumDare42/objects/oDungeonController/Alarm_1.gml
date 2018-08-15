/// @description Spawn Dogs
if (numberOfDogs < numberOfDogsToStart) {
	numberOfDogs++;
	
	SpawnDogs();
	
	// Ramp up spawn time
	if ((numberOfDogsToStart * 3) - (numberOfDogs * 5) > 30) {
		alarm[1] = (numberOfDogsToStart * 3) - (numberOfDogs * 5);
	}
	else {
		alarm[1] = 30;	
	}
}