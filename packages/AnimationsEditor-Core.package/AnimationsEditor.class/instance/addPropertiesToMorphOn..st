eventHandling
addPropertiesToMorphOn: aProperty 
	aProperty subproperties
		at: 'color'
		put: (self createColorPropertyOn: aProperty);
		
		at: 'position'
		put: (self createPositionPropertyOn: aProperty);
		
		at: 'size'
		put: (self createSizePropertyOn: aProperty);
		
		at: 'rotation'
		put: (self createRotationPropertyOn: aProperty).