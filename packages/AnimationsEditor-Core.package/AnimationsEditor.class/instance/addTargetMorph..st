eventHandling
addTargetMorph: aMorph
	| newTarget |

	newTarget := AnimationsEditorProperty new.
	newTarget animationsEditor: self.
	newTarget targetMorph: aMorph.
	newTarget title: '', (self propertyList size ), ' - ', aMorph className.
	
	aMorph isImageMorph
		ifTrue: [newTarget subproperties at: 'imageSource' put: (self createImageSourcePropertyFrom: aMorph)].
	aMorph isTextMorph
		ifTrue: [newTarget subproperties at: 'text' put: (self createTextPropertyFrom: aMorph)].
	newTarget subproperties at: 'rotation' put: (self createRotationPropertyFrom: aMorph).
	newTarget subproperties at: 'color' put: (self createColorPropertyFrom: aMorph).
	newTarget subproperties at: 'position' put: (self createPositionPropertyFrom: aMorph).
	newTarget subproperties at: 'size' put: (self createSizePropertyFrom: aMorph).
	self propertyList add: newTarget.
	self propertyTreeMorph update: self propertyTreeMorph getChildrenSelector.
	self addTimeline.
	^ newTarget.