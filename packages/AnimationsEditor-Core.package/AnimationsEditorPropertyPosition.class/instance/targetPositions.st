accessing
targetPositions

	| a |
	
	targetPositions
		ifNil: [a := OrderedDictionary new. 
			0 to: 500 do: [:x | a at: x put: -1].
			self targetPositions: a
			].
	
	^ targetPositions.