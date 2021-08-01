eventHandling
addPropertiesToImageMorphOn: aProperty 
	aProperty subproperties
		at: 'imageSource'
		put: (self createImageSourcePropertyOn: aProperty);
		
		at: 'rotation'
		put: (self createRotationPropertyOn: aProperty);
		
		at: 'position'
		put: (self createPositionPropertyOn: aProperty).