eventHandling
addTargetMorph: aMorph
	| newTarget |

	newTarget := self createPropertyWith: aMorph.
	
	self addSubPropertiesOn: newTarget.
	self propertyList add: newTarget.
	self propertyTreeMorph update: self propertyTreeMorph getChildrenSelector.
	(self propertyList second subproperties at: 'position') targetMorph: ((self propertyList second subproperties at: 'rotation') targetMorph ). 	self addTimeline.
	^ newTarget. 