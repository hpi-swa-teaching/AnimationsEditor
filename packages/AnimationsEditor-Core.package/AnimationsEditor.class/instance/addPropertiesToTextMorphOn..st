eventHandling
addPropertiesToTextMorphOn: aProperty
	aProperty subproperties 
		at: 'rotation' put: (self createRotationPropertyOn: aProperty);
		at: 'color' put: (self createColorPropertyOn: aProperty);
		at: 'position' put: (self createPositionPropertyOn: aProperty);
		at: 'text' put: (self createTextPropertyOn: aProperty).