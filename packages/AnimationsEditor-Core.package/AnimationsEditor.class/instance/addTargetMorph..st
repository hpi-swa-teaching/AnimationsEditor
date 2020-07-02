eventHandling
addTargetMorph: aMorph
	| newTarget |
	self flag: #todo.
	"Add custom target name"
	newTarget := AnimationsEditorProperty new.
	newTarget targetMorph: aMorph.
	newTarget title: (aMorph className).
	
	newTarget subproperties add: (self createPositionPropertyFrom: aMorph).
	self propertyList add: newTarget.
	self propertyTreeMorph update: self propertyTreeMorph getChildrenSelector.