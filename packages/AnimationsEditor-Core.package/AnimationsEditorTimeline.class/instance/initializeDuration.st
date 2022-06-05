initialization
initializeDuration

	self duration: StringMorph new;
	addMorph: self duration.
	self duration position: 0@0;
	color: Color black.
	self duration comeToFront.
	self duration acceptValue: self endTime.
	