eventHandling
addTargetMorph: aMorph
	| newTarget |
	self flag: #todo.
	"Add custom target name"
	newTarget := AnimationsEditorProperty new.
	newTarget animationsEditor: self.
	newTarget targetMorph: aMorph.
	newTarget title: '', (self propertyList size ), ' - ', aMorph className.
	
	newTarget subproperties add: (self createRotationPropertyFrom: aMorph).
	newTarget subproperties add: (self createColorPropertyFrom: aMorph).
	newTarget subproperties add: (self createPositionPropertyFrom: aMorph).
	newTarget subproperties add: (self createSizePropertyFrom: aMorph).
	self propertyList add: newTarget.
	self propertyTreeMorph update: self propertyTreeMorph getChildrenSelector.
	self addTimeline.