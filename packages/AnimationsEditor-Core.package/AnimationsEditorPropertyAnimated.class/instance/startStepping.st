stepping
startStepping
	self currentWorld
		startStepping: self
		at: Time millisecondClockValue
		selector: #step
		arguments: nil
		stepTime: self stepTime.
	self changed: #stepping.